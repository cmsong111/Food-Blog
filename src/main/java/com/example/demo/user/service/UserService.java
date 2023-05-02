package com.example.demo.user.service;

import com.example.demo.user.dto.SignUpForm;
import com.example.demo.user.dto.User;
import com.example.demo.user.entity.UserEntity;
import com.example.demo.user.repository.UserRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.Optional;

@Service
public class UserService {
    UserRepository userRepository;
    ModelMapper modelMapper = new ModelMapper();
    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User signUp(SignUpForm signUpForm) {
        return null;
    }

    public User login(String email, String password) {
        Optional<UserEntity> userEntity = userRepository.findByEmailAndPassword(email, password);
        if (userEntity.isEmpty()) {
            return null;
        }
        return modelMapper.map(userEntity, User.class);
    }
}
