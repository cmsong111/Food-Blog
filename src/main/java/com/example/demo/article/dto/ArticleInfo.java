package com.example.demo.article.dto;

import com.example.demo.article.entity.Reply;
import com.example.demo.user.dto.UserDto;
import lombok.Data;

import java.sql.Timestamp;
import java.util.List;

@Data
public class ArticleInfo {
    public Long id;
    public String title;
    public String content;
    public UserDto author;
    public Timestamp createTime;
    public Timestamp updateTime;
    public List<ReplyDto> reply;
    public long likeCount;
}
