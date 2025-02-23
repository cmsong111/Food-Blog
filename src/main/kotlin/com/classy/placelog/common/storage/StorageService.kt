package com.classy.placelog.common.storage

import org.springframework.web.multipart.MultipartFile

/**
 * 파일 저장 서비스
 */
interface StorageService {
    fun save(image: MultipartFile): String
    fun saveAll(images: List<MultipartFile>): List<String>
}
