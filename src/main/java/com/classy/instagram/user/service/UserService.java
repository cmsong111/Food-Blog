package com.classy.instagram.user.service;


import com.classy.instagram.user.dto.UserDto;
import com.classy.instagram.user.entity.User;
import com.classy.instagram.user.repository.UserRepository;
import java.util.ArrayList;
import java.util.List;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Slf4j
public class UserService {
    UserRepository userRepository;
    ModelMapper modelMapper = new ModelMapper();

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
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
