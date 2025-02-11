package com.classy.instagram.article.repository;

import com.classy.instagram.article.entity.Reply;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReplyRepository extends JpaRepository<Reply, Long> {
    List<Reply> findByArticle_Id(Long id);
}
