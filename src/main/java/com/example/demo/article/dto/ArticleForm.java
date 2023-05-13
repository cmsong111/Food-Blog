package com.example.demo.article.dto;

import com.example.demo.article.AttachmentType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

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
