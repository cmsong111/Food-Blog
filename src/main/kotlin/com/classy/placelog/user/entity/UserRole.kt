package com.classy.placelog.user.entity

import org.springframework.security.core.GrantedAuthority

enum class UserRole : GrantedAuthority {
    USER,
    ADMIN;

    override fun getAuthority(): String {
        return name
    }
}
