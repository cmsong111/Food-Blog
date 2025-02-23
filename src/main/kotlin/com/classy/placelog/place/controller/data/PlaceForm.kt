package com.classy.placelog.place.controller.data

import org.springframework.web.multipart.MultipartFile

/**
 * 장소 생성/수정 폼
 */
data class PlaceForm(
    /** 장소 이름 */
    val name: String,
    /** 장소 설명 */
    val description: String,
    /** 장소 썸네일 */
    val thumbnail: MultipartFile? = null
)
