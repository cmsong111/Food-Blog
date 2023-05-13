package com.classy.instagram.article.dto;

import com.classy.instagram.user.dto.UserDto;
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
