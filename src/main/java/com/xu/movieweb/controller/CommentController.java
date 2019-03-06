package com.xu.movieweb.controller;

import com.xu.movieweb.model.Comment;
import com.xu.movieweb.service.CommentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

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

    @RequestMapping(value = {"/viewcom"}, method = {RequestMethod.GET})
    public ModelAndView viewcom(Integer userId){
        ModelAndView mav = new ModelAndView();
        List<Comment> commentList = commentService.selectComByUserId(userId);
        mav.addObject("comments",commentList);
        return mav;
    }
}
