package com.ruoyi.framework.config;

import com.easemob.im.server.EMProperties;
import com.easemob.im.server.EMService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


/**
 * @Auther: dongguoyang
 * @Date: 2022/9/1年09月01日  17:16
 * @Description: com.ruoyi.framework.config
 */
@Configuration
public class EasemobConfig {
    @Bean
    public EMService service() {

        EMProperties properties = EMProperties.builder()
                .setAppkey("1149220827129182#demo")
                .setClientId("YXA67wJWH__LTAul_skyj69HBQ")
                .setClientSecret("YXA68TEX1CZLNCCF00_9n2u3bDvTwnY")
                .build();

        return new EMService(properties);
    }
}
