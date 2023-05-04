package com.example.demo.article.entity;

import com.example.demo.user.entity.User;

import javax.persistence.*;

@Entity
public class Reply {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String content;
    @ManyToOne
    private Article article;
    @ManyToOne
    private User user;

}
