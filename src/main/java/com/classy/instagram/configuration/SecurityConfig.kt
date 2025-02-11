package com.classy.instagram.configuration

import org.springframework.boot.autoconfigure.security.servlet.PathRequest
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity
import org.springframework.security.config.annotation.web.builders.HttpSecurity
import org.springframework.security.core.userdetails.UserDetailsService
import org.springframework.security.web.SecurityFilterChain


@Configuration
@EnableMethodSecurity(prePostEnabled = true, securedEnabled = true)
class SecurityConfig(
    private val userDetailsService: UserDetailsService
) {
    /**
     * Security filter chain
     */
    @Bean
    fun securityFilterChain(http: HttpSecurity): SecurityFilterChain {
        http
            .authorizeHttpRequests { authorizeRequests ->
                authorizeRequests
                    .requestMatchers(PathRequest.toH2Console()).permitAll() // H2 Console
                    .requestMatchers(PathRequest.toStaticResources().atCommonLocations()).permitAll() // Static resources
                    .anyRequest().permitAll() // TODO: Allow Auth Request, Get Request....
            }
            .csrf { csrf -> csrf.disable() } // TODO: JSP Form need to Set CSRF_TOKEN
            .formLogin {
                it
                    .loginPage("/login")
                    .loginProcessingUrl("/login")
                    .usernameParameter("email")
                    .passwordParameter("password")
                    .defaultSuccessUrl("/")
                    .failureUrl("/login?error")
                    .permitAll()
            }
            .logout {
                it
                    .logoutUrl("/logout")
                    .logoutSuccessUrl("/")
                    .permitAll()
            }
            .userDetailsService(userDetailsService)
        return http.build()
    }
}
