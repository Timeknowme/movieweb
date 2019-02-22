package com.xu.movieweb.controller;

import com.xu.movieweb.model.User;
import com.xu.movieweb.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping({"/user"})
public class UserController {

    @Resource
    private UserService userService;

    @RequestMapping(value = { "/regist" }, method = { RequestMethod.POST })
    public String addUser(User check) {
        System.out.println(check.getUserName());
        User user = userService.selectUserByName(check);
        if (user == null) {
            userService.addUser(check);
            return "index";
        } else {
            return "111";
        }
    }

    @RequestMapping(value = {"/login"}, method = {RequestMethod.POST})
    public String login(User check, HttpSession session){
        User user = userService.userLogin(check.getUserName(),check.getUserPsd());
        if (user != null) {
            session.setAttribute("user",user);
            return "111";
        } else {
            return null;
        }
    }

    @RequestMapping(value = {"/exit"}, method = {RequestMethod.GET})
    public String exit(HttpSession session){
        session.removeAttribute("user");
        return null;
    }

    @RequestMapping(value = {"/update"}, method = RequestMethod.GET)
    public ModelAndView viewUpdate(Integer userId){
        ModelAndView mav = new ModelAndView("col");
        User user = userService.selectByUserId(userId);
        mav.addObject("user",user);
        return mav;
    }

    @RequestMapping(value = {"/update"}, method = {RequestMethod.POST})
    public ModelAndView update(User user, HttpSession session){
        ModelAndView mav = new ModelAndView("col");
        User sessionUser = (User) session.getAttribute("user");
        Integer userId = sessionUser.getUserId();
        userService.updateUser(user,userId);
        User newUser = userService.selectByUserId(userId);
        session.setAttribute("user",newUser);
        mav.addObject("user",newUser);
        return mav;
    }
}
