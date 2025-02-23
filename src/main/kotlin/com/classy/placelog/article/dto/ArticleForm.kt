package com.classy.placelog.article.dto

import org.springframework.web.multipart.MultipartFile

/** 게시글 생성/수정 폼 */
data class ArticleForm(
    /** 제목 */
    val title: String,
    /** 내용 */
    val content: String,
    /** 이미지 파일 */
    val images: List<MultipartFile>? = null,
)
