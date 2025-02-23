package com.classy.placelog.configuration

import com.classy.placelog.configuration.properties.GitProperties
import org.springframework.boot.context.properties.EnableConfigurationProperties
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer
import org.springframework.core.io.ClassPathResource

/**
 *  application 이외의 properties 파일을 읽어오기 위한 설정
 */
@Configuration
@EnableConfigurationProperties(GitProperties::class)
class PropertiesConfig {
    @Bean
    fun propertySourcesPlaceholderConfigurer(): PropertySourcesPlaceholderConfigurer {
        return PropertySourcesPlaceholderConfigurer().apply {
            setLocation(ClassPathResource("git.properties"))
            setIgnoreResourceNotFound(true)
            setIgnoreUnresolvablePlaceholders(true)
            setFileEncoding("UTF-8")
        }
    }
}
