package com.bizzan.bitrade.controller;

import com.alibaba.fastjson.JSONObject;
import com.bizzan.bitrade.constant.WithdrawStatus;
import com.bizzan.bitrade.entity.Coin;
import com.bizzan.bitrade.entity.WithdrawRecord;
import com.bizzan.bitrade.service.BiPayService;
import com.bizzan.bitrade.service.CoinService;
import com.bizzan.bitrade.service.MemberWalletService;
import com.bizzan.bitrade.service.WithdrawRecordService;
import com.bizzan.bitrade.util.MessageResult;
import com.spark.bipay.constant.CoinType;
import com.spark.bipay.entity.Trade;
import com.spark.bipay.http.client.BiPayClient;
import com.spark.bipay.utils.HttpUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.math.RoundingMode;

@RestController
@RequestMapping("wallet")
public class CallbackController {
    @Autowired
    private BiPayClient biPayClient;

    @Autowired
    private MemberWalletService walletService;

    @Autowired
    private WithdrawRecordService withdrawRecordService;

    @Autowired
    private CoinService coinService;

    private Logger logger = LoggerFactory.getLogger(CallbackController.class);

    /**
     * 充值/提币，回调通知处理
     * @param timestamp
     * @param nonce
     * @param body
     * @param sign
     * @return
     * @throws Exception
     */
    @RequestMapping("/bipay/notify")
    public synchronized String tradeCallback(@RequestParam("timestamp") String timestamp,
                                             @RequestParam("nonce") String nonce,
                                             @RequestParam("body") String body,
                                             @RequestParam("sign") String sign) throws Exception {
        logger.info("timestamp:{},nonce:{},sign:{},body:{}", timestamp, nonce, sign, body);
        //udun签名验证
        if (!HttpUtil.checkSign(biPayClient.getMerchantKey(), timestamp, nonce, body, sign)) {
            return "error";
        }
        Trade trade = JSONObject.parseObject(body, Trade.class);
        //业务处理
        if (trade.getTradeType() == 1) {
            logger.info("=====收到Udun充币通知======");
            //金额为最小单位，需要转换,包括amount和fee字段
            BigDecimal amount = trade.getAmount().divide(BigDecimal.TEN.pow(trade.getDecimals()), 8, RoundingMode.DOWN);
            String txid = trade.getTxId();
            String address = trade.getAddress();
            CoinType coinType = CoinType.codeOf(trade.getMainCoinType(), trade.getCoinType());
            Coin coin = coinService.findByUnit(coinType.getUnit());
            // 交易成功
            if (trade.getStatus() == 3) {
                if (coin != null
                        && walletService.findDeposit(address, txid) == null
                        && amount.compareTo(coin.getMinRechargeAmount()) >= 0) {
                    MessageResult mr = walletService.recharge(coin, address, amount, txid);
                    logger.info("wallet recharge result:{}", mr);
                } else {
                    return "error";
                }
            }
        } else if (trade.getTradeType() == 2) {
            logger.info("=====收到Udun提币处理通知=====");
            Long withdrawId = Long.parseLong(trade.getBusinessId());
            WithdrawRecord withdrawRecord = withdrawRecordService.findOne(withdrawId);
            if (withdrawRecord == null) {
                logger.info("提币id:" + withdrawId + "错误");
                return "error";
            }
            String txid = trade.getTxId();
            logger.info("Udun提币处理状态" + trade.getStatus());
            if (trade.getStatus() == 1) {//审核成功
                // 提币交易已发出，理提币订单状态，扣除提币资金
                if (withdrawRecord.getStatus() == WithdrawStatus.FAIL
                        || withdrawRecord.getStatus() == WithdrawStatus.SUCCESS) {
                    logger.info("提币id:" + withdrawId + " 状态:" + withdrawRecord.getStatus() + " Uduan返回提币状态:" + trade.getStatus() );
                    return "error";
                }
                withdrawRecordService.withdrawWait(withdrawId, txid);
                logger.info("审核通过，转账中");
            } else if (trade.getStatus() == 2) {//审核驳回
                logger.info("Udun审核驳回：");
                if (withdrawRecord.getStatus() == WithdrawStatus.FAIL
                        || withdrawRecord.getStatus() == WithdrawStatus.SUCCESS) {
                    logger.info("提币ID:" + withdrawId  + " 状态:" + withdrawRecord.getStatus() + " Uduan返回提币状态:" + trade.getStatus() );
                    return "error";
                }
                withdrawRecordService.withdrawFail(withdrawId);
                logger.info("提币ID:={}审核不通过",withdrawId);
            } else if (trade.getStatus() == 3) {//交易成功
                // 提币已到账，可以向提币用户发出通知
                withdrawRecordService.withdrawSuccess(withdrawId, txid);
                logger.info("提币已到账");
            }else if (trade.getStatus() == 4) {//交易失败
                if (withdrawRecord.getStatus() == WithdrawStatus.FAIL
                        || withdrawRecord.getStatus() == WithdrawStatus.SUCCESS) {
                    logger.info("提币ID:" + withdrawId  + " 状态:" + withdrawRecord.getStatus() + " Uduan返回提币状态:" + trade.getStatus() );
                    return "error";
                }
                withdrawRecordService.withdrawFail(withdrawId);
                logger.info("提币ID:={}交易失败",withdrawId);
            }else{
                logger.info("U盾状态未知:" + trade.getStatus());
            }
        }
        return "success";
    }

}
