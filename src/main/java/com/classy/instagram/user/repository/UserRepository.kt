package com.classy.instagram.user.repository

import com.classy.instagram.user.entity.User
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository


@Repository
interface UserRepository : JpaRepository<User, String> {
    fun findByNicknameContains(nickname: String): List<User>
}
