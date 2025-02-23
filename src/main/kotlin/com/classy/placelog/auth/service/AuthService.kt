package com.classy.placelog.auth.service

import com.classy.placelog.auth.dto.SignUpForm
import com.classy.placelog.user.entity.User
import com.classy.placelog.user.repository.UserRepository
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.core.userdetails.UserDetailsService
import org.springframework.security.core.userdetails.UsernameNotFoundException
import org.springframework.security.crypto.password.PasswordEncoder
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
class AuthService(
    private val userRepository: UserRepository,
    private val passwordEncoder: PasswordEncoder
) : UserDetailsService {
    /**
     * 스프링 시큐리티에서 사용할 로그인 메소드
     */
    @Transactional(readOnly = true)
    override fun loadUserByUsername(username: String): UserDetails {
        return userRepository.findById(username)
            .orElseThrow { UsernameNotFoundException("User not found") }
    }

    /**
     * 회원가입 메소드
     */
    @Transactional
    fun signup(signUpForm: SignUpForm): User {
        if (userRepository.existsById(signUpForm.email)) {
            throw IllegalArgumentException("이미 가입된 이메일입니다.")
        }

        val user: User = User.create(
            email = signUpForm.email,
            password = signUpForm.password,
            name = signUpForm.name,
            nickname = signUpForm.nickname,
            passwordEncoder = passwordEncoder
        )

        return userRepository.save(user)
    }
}
