package com.bizzan.bitrade.service;

import ch.qos.logback.classic.Logger;
import com.alibaba.fastjson.JSON;
import com.bizzan.bitrade.consumer.MemberConsumer;
import com.bizzan.bitrade.entity.Coin;
import com.spark.bipay.constant.CoinType;
import com.spark.bipay.entity.Address;
import com.spark.bipay.entity.SupportCoin;
import com.spark.bipay.entity.Transaction;
import com.spark.bipay.http.ResponseMessage;
import com.spark.bipay.http.client.BiPayClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

@Service
public class BiPayService {

    @Autowired
    private BiPayClient biPayClient;
    @Value("${server.host}")
    private String host;
    @Value("#{'${bipay.supported-coins}'.split(',')}")
    private List<String> supportedCoins;
    @Autowired
    private CoinService coinService;

    public boolean isSupportedCoin(String coinName) {
        return supportedCoins != null && supportedCoins.contains(coinName);
    }

    /**
     * 创建币种地址
     *
     * @param coinType
     * @param alias
     * @param walletId
     * @return
     */
    public Address createCoinAddress(CoinType coinType, String alias, String walletId) {
        String callbackUrl = host + "/wallet/bipay/notify";
        try {
            ResponseMessage<Address> resp = biPayClient.createCoinAddress(coinType.getMaincode(), callbackUrl, alias, walletId);
            return resp.getData();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 提币
     *
     * @param orderId
     * @param amount
     * @param coinType
     * @param subCoinType
     * @param address
     * @param memo
     * @return
     */
    public ResponseMessage<String> transfer(String orderId, BigDecimal amount, CoinType coinType, String subCoinType, String address, String memo) {
        String callbackUrl = host + "/wallet/bipay/notify";
        try {
            ResponseMessage<String> resp = biPayClient.transfer(orderId, amount, coinType.getMaincode(), subCoinType, address, callbackUrl, memo);
            return resp;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseMessage.error("提交转币失败");
    }

    /**
     * 代付
     *
     * @param orderId
     * @param amount
     * @param coinType
     * @param subCoinType
     * @param address
     * @param memo
     * @return
     */
    public ResponseMessage<String> autoTransfer(String orderId, BigDecimal amount, CoinType coinType, String subCoinType, String address, String memo) {
        String callbackUrl = host + "/wallet/bipay/notify";
        try {
            ResponseMessage<String> resp = biPayClient.autoTransfer(orderId, amount, coinType.getMaincode(), subCoinType, address, callbackUrl, memo);
            return resp;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseMessage.error("提交转币失败");
    }

    public List<Transaction> queryTransaction() throws Exception {
        return biPayClient.queryTransaction("", "", "", null, "", "", "");
    }

    /**
     * 校验地址合法性
     *
     * @param mainCoinType
     * @param address
     * @return
     * @throws Exception
     */
    public boolean checkAddress(String mainCoinType, String address) throws Exception {
        return biPayClient.checkAddress(mainCoinType, address);
    }

    /**
     * 查询支持币种
     *
     * @param showBalance
     * @return
     * @throws Exception
     */
    public List<SupportCoin> getSupportCoin(Boolean showBalance) throws Exception {
        return biPayClient.getSupportCoin(showBalance);
    }

    /**
     * 校验地址是否存在
     * @desc 校验地址是否为该商户生成的地址
     * @param mainCoinType 主币种编号
     * @param address 需校验的地址
     * @return
     * @throws Exception
     */
    public boolean existAddress(String mainCoinType, String address) throws Exception {
        return biPayClient.existAddress(mainCoinType, address);
    }
}
