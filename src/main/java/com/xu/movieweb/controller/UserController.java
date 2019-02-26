package com.xu.movieweb.controller;

import com.xu.movieweb.model.User;
import com.xu.movieweb.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

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
        return "login";
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

    @RequestMapping(value = {"/updatePsd"}, method = {RequestMethod.POST})
    public String updatepsd(String oldPsd, String newPsd, HttpSession session) throws IOException {
        session.removeAttribute("updatepsd");
        User user = (User) session.getAttribute("user");
        int userId = user.getUserId();
        String userPsd = userService.getPsdByUserId(userId);
        if (userPsd.equals(oldPsd)){
            userService.updatePsdByUserId(userId,newPsd);
            session.setAttribute("updatepsd","success");
            return "redirect:/user/exit.html";
            //response.sendRedirect(request.getContextPath() + "/user/exit.html");
        } else {
            session.setAttribute("updatepsd","error");
            return "111";
        }
    }

    @RequestMapping(value = {"/uploadHeadPic"}, method = {RequestMethod.GET})
    public ModelAndView uploadpic(){
        ModelAndView mav = new ModelAndView("uploadpic");
        return mav;
    }

    @RequestMapping(value = {"/uploadHeadPic"}, method = {RequestMethod.POST})
    public ModelAndView uploadpic(HttpSession session,HttpServletResponse response,HttpServletRequest request) throws IOException{
        ModelAndView mav = new ModelAndView("uploadpic");
        User user=(User)session.getAttribute("user");
        int userId = user.getUserId();
        String path="";
        String filePath = request.getSession().getServletContext().getRealPath("/");
        //String filePath = "D://testWork//movieweb//src/main//webapp";
        System.out.println(filePath);
        MultipartHttpServletRequest multipartRequest =(MultipartHttpServletRequest)request;
        MultipartFile file=multipartRequest.getFile("pic");
        String uuid = UUID.randomUUID().toString().replaceAll("-","");
        String contentType=file.getContentType();
        String imageName=contentType.substring(contentType.indexOf("/")+1);
        path="/jsp/img/"+uuid+"."+imageName;
        File newfile=new File(filePath + path);
        try {
            file.transferTo(newfile);
        }
        catch(IllegalStateException e) {
            e.printStackTrace();
        }catch(IOException e) {
            e.printStackTrace();
        }
        userService.uploadHeadPic(userId,path);
        User newUser = userService.selectByUserId(userId);
        session.setAttribute("user",newUser);
        return mav;
    }
}
