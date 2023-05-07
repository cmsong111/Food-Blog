package com.example.demo.article.dto;

import com.example.demo.user.dto.UserDto;
import lombok.Data;

import java.sql.Timestamp;

@Data
public class ReplyDto {
    public Long id;
    public String content;
    public UserDto user;
    public Timestamp createTime;
    public Timestamp updateTime;
}
