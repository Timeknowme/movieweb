package com.xu.movieweb.controller;

import com.xu.movieweb.model.User;
import com.xu.movieweb.service.UserService;
import com.xu.movieweb.util.getIp;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping({"/user"})
public class UserController {

    @Resource
    private UserService userService;

    @RequestMapping(value = {"/regist"}, method = {RequestMethod.GET})
    public ModelAndView regist(){
        ModelAndView mav = new ModelAndView("regist");
        return mav;
    }

    @RequestMapping(value = { "/regist" }, method = { RequestMethod.POST })
    public String addUser(User check) {
        System.out.println(check.getUserName());
        User user = userService.selectUserByName(check);
        if (user == null) {
            userService.addUser(check);
            return "redirect:/user/login.html";
        } else {
            return "redirect:/user/regist.html";
        }
    }

    @RequestMapping(value = {"/login"}, method = {RequestMethod.GET})
    public ModelAndView login(HttpSession session){
        ModelAndView mav = new ModelAndView("login");
        return mav;
    }

    @RequestMapping(value = {"/login"}, method = {RequestMethod.POST})
    public String login(User check, HttpSession session, HttpServletRequest request){
        User user = userService.userLogin(check.getUserName(),check.getUserPsd());
        if (user != null) {
            session.setAttribute("user",user);
            String ip = getIp.getIpAddr(request);
            session.setAttribute("ip",ip);
            System.out.println(ip);
            return "redirect:/user/usermain.html";
        } else {
            session.setAttribute("userlogin","error");
            return "redirect:/user/login.html";
        }
    }

    @RequestMapping(value = {"/usermain"}, method = {RequestMethod.GET})
    public ModelAndView usermain(){
        ModelAndView mav = new ModelAndView("usermain");
        return mav;
    }

    @RequestMapping(value = {"/exit"}, method = {RequestMethod.GET})
    public String exit(HttpSession session){
        session.removeAttribute("user");
        return "redirect:/movie/showIndex.html";
    }

    @RequestMapping(value = {"/update"}, method = RequestMethod.GET)
    public ModelAndView viewUpdate(Integer userId){
        ModelAndView mav = new ModelAndView("update");
        User user = userService.selectByUserId(userId);
        mav.addObject("user",user);
        return mav;
    }

    @RequestMapping(value = {"/update"}, method = {RequestMethod.POST})
    public ModelAndView update(User user, HttpSession session){
        ModelAndView mav = new ModelAndView("update");
        User sessionUser = (User) session.getAttribute("user");
        Integer userId = sessionUser.getUserId();
        userService.updateUser(user,userId);
        User newUser = userService.selectByUserId(userId);
        session.setAttribute("user",newUser);
        mav.addObject("user",newUser);
        return mav;
    }

    @RequestMapping(value = {"/updatePsd"}, method = {RequestMethod.GET})
    public ModelAndView updatepsd(HttpSession session){
        ModelAndView mav = new ModelAndView("updatepsd");
        session.removeAttribute("nowpassword");
        return mav;
    }

    @RequestMapping(value = {"/updatePsd"}, method = {RequestMethod.POST})
    public String updatepsd(String oldPsd, String newPsd, HttpSession session, RedirectAttributes attr) throws IOException {
        User user = (User) session.getAttribute("user");
        int userId = user.getUserId();
        String userPsd = userService.getPsdByUserId(userId);
        //session.setAttribute("nowpassword",userPsd);
        if (userPsd.equals(oldPsd)){
            userService.updatePsdByUserId(userId,newPsd);
            session.setAttribute("nowpassword","success");
            return "redirect:/user/exit.html";
            //response.sendRedirect(request.getContextPath() + "/user/exit.html");
        } else {
            attr.addAttribute("userId",userId);
            session.setAttribute("updatepsd","error");
            return "redirect:/user/updatePsd.html";
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
        path="/jsp/img/user/"+uuid+"."+imageName;
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

    @RequestMapping(value = {"/listAllUser"}, method = {RequestMethod.GET})
    public ModelAndView listalluser(){
        ModelAndView mav = new ModelAndView("manageuser");
        List<User> userList = userService.listUser();
        mav.addObject("userList",userList);
        return mav;
    }

    @RequestMapping(value = {"/deleteUser"}, method = {RequestMethod.GET})
    public String deleteuser(Integer userId){
        userService.deleteUser(userId);
        return "redirect:/user/listAllUser.html";
    }
}
