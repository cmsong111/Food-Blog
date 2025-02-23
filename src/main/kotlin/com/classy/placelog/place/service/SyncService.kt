package com.classy.placelog.place.service

import org.springframework.scheduling.annotation.Scheduled
import org.springframework.stereotype.Service

@Service
class SyncService(
    private val syncApiData: Set<SyncApiData>
) {
    // 매주 일요일 00시 00분 00초에 실행
    @Scheduled(cron = "0 0 0 * * SUN")
    fun sync() {
        syncApiData.forEach { it.sync() }
    }
}
