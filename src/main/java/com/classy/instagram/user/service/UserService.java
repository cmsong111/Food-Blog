package com.classy.instagram.user.service;

import com.classy.instagram.user.dto.LoginForm;
import com.classy.instagram.user.dto.SignUpForm;
import com.classy.instagram.user.dto.UserDto;
import com.classy.instagram.user.entity.User;
import com.classy.instagram.user.entity.UserRole;
import com.classy.instagram.user.repository.UserRepository;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
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
        log.info("login success {}", userEntity.get());
        return modelMapper.map(userEntity, UserDto.class);
    }

    public UserDto findById(String id) {
        log.info("회원 정보 요청");
        return modelMapper.map(userRepository.findById(id), UserDto.class);
    }

    public UserDto update(UserDto userDto) {
        log.info("회원 정보 수정");
        User user = modelMapper.map(userDto, User.class);
        return modelMapper.map(userRepository.save(user), UserDto.class);
    }

    public List<UserDto> findUserList(String nickname) {
        log.info("회원 검색");
        List<User> userList = userRepository.findByNicknameContains(nickname);
        List<UserDto> userDtoList = new ArrayList<>();
        for (User user : userList) {
            userDtoList.add(modelMapper.map(user, UserDto.class));
        }
        return userDtoList;
    }
}
