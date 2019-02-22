package com.xu.movieweb.controller;

import com.xu.movieweb.model.Comment;
import com.xu.movieweb.service.CommentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

@Controller
@RequestMapping({"/comment"})
public class CommentController {

    @Resource
    CommentService commentService;

    @RequestMapping(value = {"/addComment"} , method = {RequestMethod.POST})
    public String addcomment(Integer userId,Integer movieId, String text){
        commentService.addComment(userId, movieId, text);
        return "111";
    }

    @RequestMapping(value = {"/deletecom"} , method = {RequestMethod.GET})
    public String deletecomment(Integer commentId){
        commentService.deleteComment(commentId);
        return "111";
    }
}
