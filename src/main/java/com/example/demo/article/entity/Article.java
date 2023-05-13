package com.example.demo.article.entity;

import com.example.demo.user.entity.User;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.List;

@Entity
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Article {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String content;
    @ManyToOne(fetch = FetchType.LAZY)
    private User author;
    private Timestamp createTime;
    private Timestamp updateTime;
    private String pictureUrl;
    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Reply> reply;
    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
    private List<ArticleLike> like;
}
