package com.classy.instagram.article.entity;

import com.classy.instagram.user.entity.User;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import java.sql.Timestamp;
import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.ColumnDefault;

@Entity
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Article {
    @Column(name = "likes_count")
    @ColumnDefault("0")
    public int likesCount;
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
    @OneToMany(cascade = CascadeType.REMOVE, orphanRemoval = true)
    private List<Reply> reply;
    @OneToMany(cascade = CascadeType.REMOVE, orphanRemoval = true)
    private List<ArticleLike> like;
}
