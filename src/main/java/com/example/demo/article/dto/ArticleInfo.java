package com.example.demo.article.dto;

import com.example.demo.article.entity.Reply;
import com.example.demo.user.dto.UserDto;

import java.sql.Timestamp;
import java.util.List;

public class ArticleInfo {
    private Long id;
    private String title;
    private String content;
    private UserDto author;
    private Timestamp createTime;
    private Timestamp updateTime;
    private List<Reply> reply;
    private long likeCount;
}
