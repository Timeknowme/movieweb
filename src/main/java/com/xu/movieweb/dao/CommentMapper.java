package com.xu.movieweb.dao;

import com.xu.movieweb.model.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentMapper {

    List<Comment> selectComByUserId(@Param("userId") Integer userId);

    List<Comment> selectComByMovieId(@Param("movieId") Integer movieId);

    void addComment(@Param("userId") Integer userId,@Param("movieId") Integer movieId,@Param("text") String text);

    void deleteComment(@Param("commentId") Integer commentId);

    Integer listComByMovieIdCount(@Param("movieId") Integer movieId);

    Integer listComByUserIdCount(@Param("userId") Integer userId);
}
