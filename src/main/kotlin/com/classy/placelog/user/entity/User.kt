package com.classy.placelog.user.entity

import com.classy.placelog.common.entity.BaseEntity
import jakarta.persistence.Column
import jakarta.persistence.ElementCollection
import jakarta.persistence.Entity
import jakarta.persistence.EntityListeners
import jakarta.persistence.EnumType
import jakarta.persistence.Enumerated
import jakarta.persistence.FetchType
import jakarta.persistence.Id
import jakarta.persistence.Table
import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.crypto.password.PasswordEncoder

@EntityListeners()
@Table(name = "users")
@Entity
class User(
    /** 이메일(아이디) */
    @Id
    val email: String,
    /** 비밀번호 */
    private var password: String,
    /** 이름 (실명) */
    var name: String,
    /** 닉네임 */
    var nickname: String,
    /** 프로필 이미지 */
    @Column(name = "image_url")
    var imageUrl: String = "https://picsum.photos/id/237/300/300",
    @Enumerated(value = EnumType.STRING)
    @ElementCollection(fetch = FetchType.EAGER)
    var roles: MutableSet<UserRole> = mutableSetOf(UserRole.USER),
) : UserDetails, BaseEntity() {
    override fun getAuthorities(): MutableCollection<out GrantedAuthority> {
        return roles
    }

    override fun getPassword(): String {
        return password
    }

    override fun getUsername(): String {
        return email
    }

    /**
     * 프로필 정보 수정
     * @param name 이름
     * @param nickname 닉네임
     * @param imageUrl 프로필 이미지 URL
     */
    fun update(
        name: String?,
        nickname: String?,
        imageUrl: String?,
    ) {
        name?.let { this.name = it }
        nickname?.let { this.nickname = it }
        imageUrl?.let { this.imageUrl = it }
    }

    fun updatePassword(
        password: String,
        passwordEncoder: PasswordEncoder,
    ) {
        this.password = passwordEncoder.encode(password)
    }

    companion object {
        fun create(
            email: String,
            password: String,
            name: String,
            nickname: String,
            passwordEncoder: PasswordEncoder,
        ): User {
            return User(
                email = email,
                password = passwordEncoder.encode(password),
                name = name,
                nickname = nickname,
            )
        }
    }
}
