package com.classy.instagram.article.dto;

import com.classy.instagram.user.dto.UserDto;
import java.sql.Timestamp;
import lombok.Data;

@Data
public class ReplyDto {
    public Long id;
    public String content;
    public UserDto user;
    public Timestamp createTime;
    public Timestamp updateTime;
}
