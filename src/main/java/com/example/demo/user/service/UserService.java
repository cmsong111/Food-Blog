package com.example.demo.user.service;

import com.example.demo.user.dto.LoginForm;
import com.example.demo.user.dto.SignUpForm;
import com.example.demo.user.dto.UserDto;
import com.example.demo.user.entity.User;
import com.example.demo.user.entity.UserRole;
import com.example.demo.user.repository.UserRepository;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.Optional;

@Service
@Slf4j
public class UserService {
    UserRepository userRepository;
    ModelMapper modelMapper = new ModelMapper();
    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public UserDto signUp(SignUpForm signUpForm) {
        log.info("signUpForm: {}", signUpForm);
        User userEntity = modelMapper.map(signUpForm, User.class);
        userEntity.setEnabled(true);
        userEntity.setAccountNonExpired(true);
        userEntity.setAccountNonLocked(true);
        userEntity.setCredentialsNonExpired(true);
        userEntity.setRoles(Collections.singleton(UserRole.USER));

        User savedUserEntity = userRepository.save(userEntity);
        return modelMapper.map(savedUserEntity, UserDto.class);
    }

    public UserDto login(LoginForm loginForm) {
        log.info("login tried email: {}, password: {}", loginForm.getEmail(), loginForm.getPassword());
        Optional<User> userEntity = userRepository.findByEmailAndPassword(loginForm.getEmail(), loginForm.getPassword());
        if (userEntity.isEmpty()) {
            return null;
        }
        log.info("login success {}" , userEntity.get().toString());
        return modelMapper.map(userEntity, UserDto.class);
    }
}
