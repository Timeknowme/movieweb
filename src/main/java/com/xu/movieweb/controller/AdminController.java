package com.xu.movieweb.controller;

import com.xu.movieweb.model.Admin;
import com.xu.movieweb.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping({"/admin"})
public class AdminController {

    @Resource
    AdminService adminService;

    @RequestMapping(value = {"/adminLogin"}, method = {RequestMethod.POST})
    public String adminlogin(String adminName, String adminPsd, HttpSession session){
        Admin admin = adminService.adminLogin(adminName,adminPsd);
        if(admin != null) {
            session.setAttribute("admin",admin);
            return null;
        } else {
            session.setAttribute("adminlogin","error");
            return null;
        }
    }

    @RequestMapping(value = {"/adminexit"}, method = {RequestMethod.GET})
    public String adminexit(HttpSession session){
        session.removeAttribute("admin");
        return null;
    }
}
