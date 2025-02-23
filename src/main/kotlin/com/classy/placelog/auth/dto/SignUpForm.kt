package com.classy.placelog.auth.dto

/**
 * 회원가입 폼
 * @property email 이메일
 * @property password 비밀번호
 * @property name 이름
 * @property nickname 닉네임
 */
data class SignUpForm(
    val email: String,
    val password: String,
    val name: String,
    val nickname: String,
)
