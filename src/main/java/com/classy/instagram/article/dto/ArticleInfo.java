package com.classy.instagram.article.dto;

import com.classy.instagram.user.dto.UserDto;
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
    public String pictureUrl;

}
