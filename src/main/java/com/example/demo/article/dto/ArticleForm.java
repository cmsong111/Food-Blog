package com.example.demo.article.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ArticleForm {
    public String title;
    public String content;
    public String pictureUrl;
    //private Map<AttachmentType, List<MultipartFile>> attachmentFiles = new ConcurrentHashMap<>();
}
