package com.classy.placelog.user.dto

import org.springframework.web.multipart.MultipartFile

/**
 * 유저 생성/수정 폼
 */
data class UserForm(
    /** 이메일 (로그인 및 유저 식별자) */
    val email: String,
    /** 비밀번호 */
    val password: String,
    /** 이름 */
    val name: String,
    /** 닉네임 */
    val nickname: String,
    /** 프로필 이미지 */
    val profile: MultipartFile? = null,
) {
}
