package com.classy.instagram.article.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ArticleEditForm {
    public Long id;
    public String title;
    public String content;
    public String pictureUrl;
}
