package com.classy.instagram.article.dto;

import com.classy.instagram.user.dto.UserDto;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ArticleInfo {
    public Long id;
    public String title;
    public String content;
    public UserDto author;
    public Timestamp createTime;
    public Timestamp updateTime;
    public List<ReplyDto> reply;
    public String pictureUrl;
    public int likesCount;
    public boolean Liked;
}
