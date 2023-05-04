package com.example.demo.article.dto;

import com.example.demo.user.dto.UserDto;
import lombok.Data;

@Data
public class ReplyDto {
    public Long id;
    public String content;
    public UserDto user;
}
