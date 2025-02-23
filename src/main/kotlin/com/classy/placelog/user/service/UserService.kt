package com.classy.placelog.user.service

import com.classy.placelog.common.storage.StorageService
import com.classy.placelog.user.dto.UserForm
import com.classy.placelog.user.entity.User
import com.classy.placelog.user.repository.UserRepository
import org.springframework.data.domain.Page
import org.springframework.data.domain.Pageable
import org.springframework.data.repository.findByIdOrNull
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
class UserService(
    private val userRepository: UserRepository,
    private val storageService: StorageService,
) {
    @Transactional(readOnly = true)
    fun getUser(email: String): User {
        return userRepository.findById(email)
            .orElseThrow { IllegalArgumentException("User not found") }
    }

    @Transactional
    fun updateUser(userForm: UserForm): User {
        val profileImage = userForm.profile?.let { storageService.save(it) }

        val user: User = userRepository.findByIdOrNull(userForm.email)
            ?: throw IllegalArgumentException("User not found")

        user.update(
            name = userForm.name,
            nickname = userForm.nickname,
            imageUrl = profileImage,
        )

        return user
    }

    @Transactional(readOnly = true)
    fun findUser(
        keywords: String,
        pageable: Pageable,
    ): Page<User> {
        return userRepository.findByNicknameContains(keywords, pageable)
    }
}
