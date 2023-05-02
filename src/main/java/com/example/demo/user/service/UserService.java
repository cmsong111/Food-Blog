package com.example.demo.user.service;

import com.example.demo.user.dto.LoginForm;
import com.example.demo.user.dto.SignUpForm;
import com.example.demo.user.dto.User;
import com.example.demo.user.entity.UserEntity;
import com.example.demo.user.entity.UserRole;
import com.example.demo.user.repository.UserRepository;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

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

    public User signUp(SignUpForm signUpForm) {
        log.info("signUpForm: {}", signUpForm);
        UserEntity userEntity = modelMapper.map(signUpForm, UserEntity.class);
        userEntity.setEnabled(true);
        userEntity.setAccountNonExpired(true);
        userEntity.setAccountNonLocked(true);
        userEntity.setCredentialsNonExpired(true);
        userEntity.setRoles(Collections.singleton(UserRole.USER));

        UserEntity savedUserEntity = userRepository.save(userEntity);
        return modelMapper.map(savedUserEntity, User.class);
    }

    public User login(LoginForm loginForm) {
        log.info("login tried email: {}, password: {}", loginForm.getEmail(), loginForm.getPassword());
        Optional<UserEntity> userEntity = userRepository.findByEmailAndPassword(loginForm.getEmail(), loginForm.getPassword());
        if (userEntity.isEmpty()) {
            return null;
        }
        log.info("login success {}" , userEntity.get().toString());
        return modelMapper.map(userEntity, User.class);
    }
}
