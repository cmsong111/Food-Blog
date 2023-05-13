package com.classy.instagram.article.entity;

import com.classy.instagram.user.entity.User;

import javax.persistence.*;

@Entity
@Table(name = "article_likes")
public class ArticleLike {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    private Article article;
    @ManyToOne
    private User user;
}
