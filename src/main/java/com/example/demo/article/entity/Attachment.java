package com.example.demo.article.entity;

import com.example.demo.article.AttachmentType;

import javax.persistence.*;

@Entity
public class Attachment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String originalFileName;
    private String storedFilePath;
    @Enumerated(EnumType.STRING)
    private AttachmentType type;
    @ManyToOne(fetch = FetchType.LAZY)
    private Article article;
}
