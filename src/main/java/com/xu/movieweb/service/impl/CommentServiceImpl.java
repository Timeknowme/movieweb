package com.xu.movieweb.service.impl;

import com.xu.movieweb.dao.CommentMapper;
import com.xu.movieweb.model.Comment;
import com.xu.movieweb.service.CommentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {

    @Resource
    CommentMapper commentMapper;

    @Override
    public void addComment(Integer userId, Integer movieId, String text, String time) {
        commentMapper.addComment(userId, movieId, text, time);
    }

    @Override
    public List<Comment> selectComByMovieId(Integer movieId) {
        return commentMapper.selectComByMovieId(movieId);
    }

    @Override
    public void deleteComment(Integer commentId) {
        commentMapper.deleteComment(commentId);
    }

    @Override
    public List<Comment> selectComByUserId(Integer userId) {
        return commentMapper.selectComByUserId(userId);
    }

    @Override
    public Integer listComByMovieIdCount(Integer movieId) {
        return commentMapper.listComByMovieIdCount(movieId);
    }

    @Override
    public Integer listComByUserIdCount(Integer userId) {
        return commentMapper.listComByUserIdCount(userId);
    }
}
