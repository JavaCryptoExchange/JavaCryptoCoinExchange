package com.bizzan.bitrade.controller;


import com.bizzan.bitrade.service.BiPayService;
import com.spark.bipay.constant.CoinType;
import com.spark.bipay.entity.Address;
import com.spark.bipay.entity.SupportCoin;
import com.spark.bipay.entity.Transaction;
import com.spark.bipay.http.ResponseMessage;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.List;

@RestController
public class RequestController {

    @Autowired
    private BiPayService biPayService;
    private Logger logger = LoggerFactory.getLogger(RequestController.class);

    /**
     * 创建新地址
     *
     * @param coinType
     * @return
     */
    @RequestMapping("/bipay/create-address")
    public Address createCoinAddress(int coinType) {
        return null;
    }

    /**
     * 发起转账请求
     *
     * @param coinType
     * @param amount
     * @param address
     * @return
     */
    @RequestMapping("/bipay/transfer")
    public ResponseMessage<String> transfer(String coinType, BigDecimal amount, String address, String memo) {
        String orderId = String.valueOf(Calendar.getInstance().getTimeInMillis());
        CoinType coin = CoinType.codeOf(coinType, coinType);
        ResponseMessage<String> resp = null;
        biPayService.transfer(orderId, amount, coin, coin.getCode(), address, memo);
        return null;
    }

    /**
     * 代付
     *
     * @param coinType
     * @param amount
     * @param address
     * @return
     */
    @RequestMapping("/bipay/autotransfer")
    public ResponseMessage<String> autoTransfer(String coinType, BigDecimal amount, String address, String memo) {
        String orderId = String.valueOf(Calendar.getInstance().getTimeInMillis());
        CoinType coin = CoinType.codeOf(coinType, coinType);
        ResponseMessage<String> resp = null;
        biPayService.autoTransfer(orderId, amount, coin, coin.getCode(), address, memo);
        return null;
    }

    @RequestMapping("/bipay/transaction")
    public List<Transaction> queryTransaction() throws Exception {
        biPayService.queryTransaction();
        return null;
    }

    /**
     * 校验地址合法性
     *
     * @param mainCoinType
     * @param address
     */
    @RequestMapping("/bipay/checkAddress")
    public boolean checkAddress(String mainCoinType, String address) throws Exception {
        logger.info("U盾待验证 mainCoinType:{} 地址：{}",mainCoinType,address);
        return biPayService.checkAddress(mainCoinType, address);
    }

    /**
     * 获取支持的币种
     *
     * @param showBalance
     * @return
     * @throws Exception
     */
    @RequestMapping("/bipay/getSupportCoin")
    public List<SupportCoin> getSupportCoin(Boolean showBalance) throws Exception {
        return biPayService.getSupportCoin(showBalance);
    }

    /**
     * 校验地址是否存在
     * 校验地址是否为该商户生成的地址
     * @param mainCoinType 主币种编号
     * @param address 需校验的地址
     * @return
     * @throws Exception
     */
    @RequestMapping("/bipay/existAddress")
    public boolean existAddress(String mainCoinType, String address) throws Exception {
        return biPayService.existAddress(mainCoinType, address);
    }
}
