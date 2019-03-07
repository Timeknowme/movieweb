package com.xu.movieweb.controller;

import com.xu.movieweb.model.Comment;
import com.xu.movieweb.model.User;
import com.xu.movieweb.service.CommentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping({"/comment"})
public class CommentController {

    @Resource
    CommentService commentService;

    @RequestMapping(value = {"/addComment"} , method = {RequestMethod.POST})
    public String addcomment(Integer userId, Integer movieId, String text, RedirectAttributes attr){
        Date date = new Date();
        String datetime = null;
        DateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        datetime = dFormat.format(date);
        commentService.addComment(userId, movieId, text, datetime);
        attr.addAttribute("movieId",movieId);
        return "redirect:/movie/showMovie.html";
    }

    @RequestMapping(value = {"/deletecom"} , method = {RequestMethod.GET})
    public String deletecomment(Integer commentId, HttpSession session, RedirectAttributes attr){
        commentService.deleteComment(commentId);
        User user = (User) session.getAttribute("user");
        Integer userId = user.getUserId();
        attr.addAttribute("userId",userId);
        return "redirect:/comment/viewcom.html";
    }

    @RequestMapping(value = {"/viewcom"}, method = {RequestMethod.GET})
    public ModelAndView viewcom(Integer userId){
        ModelAndView mav = new ModelAndView("mycomment");
        List<Comment> commentList = commentService.selectComByUserId(userId);
        mav.addObject("comments",commentList);
        return mav;
    }
}
