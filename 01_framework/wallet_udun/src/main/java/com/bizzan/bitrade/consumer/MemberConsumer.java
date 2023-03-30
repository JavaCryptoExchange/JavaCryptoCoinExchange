package com.bizzan.bitrade.consumer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.bizzan.bitrade.constant.ActivityRewardType;
import com.bizzan.bitrade.constant.RewardRecordType;
import com.bizzan.bitrade.constant.TransactionType;
import com.bizzan.bitrade.entity.*;
import com.bizzan.bitrade.es.ESUtils;
import com.bizzan.bitrade.service.*;
import com.bizzan.bitrade.util.BigDecimalUtils;

import org.apache.commons.lang.StringUtils;
import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;
import org.springframework.web.client.RestTemplate;

import com.spark.bipay.constant.CoinType;
import com.spark.bipay.entity.Address;

import java.math.BigDecimal;
import java.util.List;

@Component
public class MemberConsumer {

    private Logger logger = LoggerFactory.getLogger(MemberConsumer.class);
    @Autowired
    private CoinService coinService;
    @Autowired
    private MemberWalletService memberWalletService;
    @Autowired
    private RewardActivitySettingService rewardActivitySettingService;
    @Autowired
    private MemberService memberService;
    @Autowired
    private RewardRecordService rewardRecordService;
    @Autowired
    private MemberTransactionService memberTransactionService;
    @Autowired
    private BiPayService biPayService;

    /**
     * 重置用户钱包地址
     *
     * @param record
     */
    @KafkaListener(topics = {"reset-member-address"})
    public void resetAddress(ConsumerRecord<String, String> record) {
        String unit = record.key();
        String content = record.value();
        JSONObject json = JSON.parseObject(content);
        Long uid = json.getLong("uid");
        Coin coin = coinService.findByUnit(unit);
        Assert.notNull(coin, "coin null");
        MemberWallet memberWallet = memberWalletService.findByCoinUnitAndMemberId(unit, json.getLong("uid"));
        Assert.notNull(memberWallet, "wallet null");
        boolean isBaseCoin = false;
        if (StringUtils.isEmpty(memberWallet.getAddress())) {
            //检查主链币和代币
            int coinType = coin.getCoinType();
            if (coinType == 2) {//代币
                Coin baseCoin = coinService.findByUnit(coin.getBaseCoin());//主链
                Assert.notNull(coin, unit + " baseCoin null");
                MemberWallet baseCoinWallet = memberWalletService.findByCoinUnitAndMemberId(baseCoin.getUnit(), uid);
                if (!StringUtils.isEmpty(baseCoinWallet.getAddress())) {//主链地址已获取
                    String baseCoinAddress = baseCoinWallet.getAddress();
                    memberWallet.setAddress(baseCoinAddress);
                    memberWalletService.save(memberWallet);
                    logger.info("保存为主链 {} 地址:{}", baseCoin.getUnit(), baseCoinAddress);
                } else {
                    isBaseCoin = true;
//                    //生成主链地址
//                    Address addressBack = biPayService.createCoinAddress(CoinType.unitOf(unit), null, null);
//                    String address = addressBack.getAddress();
//                    memberWallet.setAddress(address);
//                    memberWalletService.save(memberWallet);
//                    logger.info("生成为主链 {} 地址:{}", baseCoin.getUnit(), address);
//                    //保存主链下所有非空代币地址
//                    List<Coin> allTokens = coinService.findAllToken(baseCoin.getUnit());
//                    for (Coin token : allTokens) {
//                        logger.info("开始检查【{}】主链下，用户所有代币地址...", baseCoin.getUnit());
//                        MemberWallet memberTokenWallet = memberWalletService.findByCoinUnitAndMemberId(token.getUnit(), uid);
//                        if (StringUtils.isEmpty(memberTokenWallet.getAddress())) {
//                            MemberWallet userTokenWallet = memberWalletService.findByCoinUnitAndMemberId(token.getUnit(), uid);
//                            userTokenWallet.setAddress(address);
//                            memberWalletService.save(userTokenWallet);
//                            logger.info("增加【{}】主链下，用户{}}代币地址：{}", baseCoin.getUnit(), token.getUnit(),address);
//                        }else{
//                            logger.info("已存在【{}】主链下，用户{}}代币地址：{}", baseCoin.getUnit(), token.getUnit(),memberTokenWallet.getAddress());
//                        }
//                    }
                }
            }
            if (coinType == 1) {//主链
                isBaseCoin = true;
            }
            if (isBaseCoin) {
                Coin baseCoin = coinService.findByUnit(coin.getBaseCoin());//主链
                if (coinType == 1) {
                    baseCoin = coin;//主链
                }
                //生成主链地址
                Address addressBack = biPayService.createCoinAddress(CoinType.unitOf(unit), null, null);
                String address = addressBack.getAddress();
                memberWallet.setAddress(address);
                memberWalletService.save(memberWallet);
                logger.info("生成为主链 {} 地址:{}", baseCoin.getUnit(), address);
                //保存主链下所有非空代币地址
                List<Coin> allTokens = coinService.findAllToken(baseCoin.getUnit());
                for (Coin token : allTokens) {
                    logger.info("开始检查【{}】主链下，用户所有代币地址...", baseCoin.getUnit());
                    MemberWallet memberTokenWallet = memberWalletService.findByCoinUnitAndMemberId(token.getUnit(), uid);
                    if (StringUtils.isEmpty(memberTokenWallet.getAddress())) {
                        MemberWallet userTokenWallet = memberWalletService.findByCoinUnitAndMemberId(token.getUnit(), uid);
                        userTokenWallet.setAddress(address);
                        memberWalletService.save(userTokenWallet);
                        logger.info("增加【{}】主链下，用户{}}代币地址：{}", baseCoin.getUnit(), token.getUnit(), address);
                    } else {
                        logger.info("已存在【{}】主链下，用户{}}代币地址：{}", baseCoin.getUnit(), token.getUnit(), memberTokenWallet.getAddress());
                    }
                }
            }

        } else {
            logger.info(uid + "钱包地址已存在" + unit);
        }
    }

    /**
     * 客户注册消息
     *
     * @param content
     */
    @KafkaListener(topics = {"member-register"})
    public void handle(String content) {
        logger.info("handle member-register,data={}", content);
        if (StringUtils.isEmpty(content)) {
            return;
        }
        JSONObject json = JSON.parseObject(content);
        if (json == null) {
            return;
        }
        //获取所有支持的币种
        List<Coin> coins = coinService.findAll();
        for (Coin coin : coins) {
            logger.info("memberId:{},unit:{}", json.getLong("uid"), coin.getUnit());
            MemberWallet wallet = new MemberWallet();
            wallet.setCoin(coin);
            wallet.setMemberId(json.getLong("uid"));
            wallet.setBalance(new BigDecimal(0));
            wallet.setFrozenBalance(new BigDecimal(0));
            wallet.setAddress("");

/** 此处获取地址注释掉，所有币种地址由用户主动获取才生成  **/
//            if(coin.getEnableRpc() == BooleanEnum.IS_TRUE) {
//                String account = "U" + json.getLong("uid");
//                //远程RPC服务URL,后缀为币种单位
//                String serviceName = "SERVICE-RPC-" + coin.getUnit();
//                try{
//                    String url = "http://" + serviceName + "/rpc/address/{account}";
//                    ResponseEntity<MessageResult> result = restTemplate.getForEntity(url, MessageResult.class, account);
//                    logger.info("remote call:service={},result={}", serviceName, result);
//                    if (result.getStatusCode().value() == 200) {
//                        MessageResult mr = result.getBody();
//                        logger.info("mr={}", mr);
//                        if (mr.getCode() == 0) {
//                            //返回地址成功，调用持久化
//                            String address = (String) mr.getData();
//                            wallet.setAddress(address);
//                        }
//                    }
//                }
//                catch (Exception e){
//                    logger.error("call {} failed,error={}",serviceName,e.getMessage());
//                    wallet.setAddress("");
//                }
//            }
//            else{
//                wallet.setAddress("");
//            }
            //保存
            memberWalletService.save(wallet);
        }
        //注册活动奖励
        RewardActivitySetting rewardActivitySetting = rewardActivitySettingService.findByType(ActivityRewardType.REGISTER);
        if (rewardActivitySetting != null) {
            MemberWallet memberWallet = memberWalletService.findByCoinAndMemberId(rewardActivitySetting.getCoin(), json.getLong("uid"));
            if (memberWallet == null) {
                return;
            }
            // 奖励币
            BigDecimal amount3 = JSONObject.parseObject(rewardActivitySetting.getInfo()).getBigDecimal("amount");
            memberWallet.setBalance(BigDecimalUtils.add(memberWallet.getBalance(), amount3));
            memberWalletService.save(memberWallet);
            // 保存奖励记录
            Member member = memberService.findOne(json.getLong("uid"));
            RewardRecord rewardRecord3 = new RewardRecord();
            rewardRecord3.setAmount(amount3);
            rewardRecord3.setCoin(rewardActivitySetting.getCoin());
            rewardRecord3.setMember(member);
            rewardRecord3.setRemark(rewardActivitySetting.getType().getCnName());
            rewardRecord3.setType(RewardRecordType.ACTIVITY);
            rewardRecordService.save(rewardRecord3);
            // 保存资产变更记录
            MemberTransaction memberTransaction = new MemberTransaction();
            memberTransaction.setFee(BigDecimal.ZERO);
            memberTransaction.setAmount(amount3);
            memberTransaction.setSymbol(rewardActivitySetting.getCoin().getUnit());
            memberTransaction.setType(TransactionType.ACTIVITY_AWARD);
            memberTransaction.setMemberId(member.getId());
            memberTransaction.setDiscountFee("0");
            memberTransaction.setRealFee("0");
            memberTransaction = memberTransactionService.save(memberTransaction);
        }

    }
}
