package com.bizzan.bitrade.config;

import com.spark.bipay.http.client.BiPayClient;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class BiPayClientConfig {

    @Value("${bipay.merchantId}")
    private String merchantId;
    @Value("${bipay.merchantKey}")
    private String merchantKey;
    @Value("${bipay.gateway}")
    private String gateway;

    @Bean
    @ConfigurationProperties(prefix = "bipay")
    public BiPayClient setBiPayClient() {
        BiPayClient client = new BiPayClient(gateway, merchantId, merchantKey);
        return client;
    }
}
