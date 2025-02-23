package com.classy.placelog.user.repository

import com.classy.placelog.user.entity.User
import org.springframework.data.domain.Page
import org.springframework.data.domain.Pageable
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface UserRepository : JpaRepository<User, String> {
    /**
     * 유저 검색 기능
     * @param nickname 닉네임
     * @param pageable 페이징 정보
     * @return Page<User>
     */
    fun findByNicknameContains(
        nickname: String,
        pageable: Pageable,
    ): Page<User>
}
