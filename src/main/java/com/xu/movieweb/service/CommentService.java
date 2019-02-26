package com.xu.movieweb.service;

import com.xu.movieweb.model.Comment;

import java.util.List;

public abstract interface CommentService {

    void addComment(Integer userId, Integer movieId, String text);

    List<Comment> selectComByMovieId(Integer movieId);

    void deleteComment(Integer commentId);

    List<Comment> selectComByUserId(Integer userId);

    Integer listComByMovieIdCount(Integer movieId);

    Integer listComByUserIdCount(Integer userId);
}
