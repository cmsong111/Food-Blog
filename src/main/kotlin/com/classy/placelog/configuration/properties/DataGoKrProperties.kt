package com.classy.placelog.configuration.properties

import org.springframework.boot.context.properties.ConfigurationProperties

@ConfigurationProperties(prefix = "data.go.kr")
data class DataGoKrProperties(
    val key: String,
)
