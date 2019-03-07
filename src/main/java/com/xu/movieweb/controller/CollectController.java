package com.xu.movieweb.controller;

import com.xu.movieweb.model.Collect;
import com.xu.movieweb.model.User;
import com.xu.movieweb.service.CollectService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping({"/collect"})
public class CollectController {

    @Resource
    private CollectService collectService;

    @RequestMapping(value = {"/viewCol"} , method = {RequestMethod.GET})
    public ModelAndView viewCollect(Integer userId) {
        ModelAndView mav = new ModelAndView("mycollect");
        List<Collect> collects = collectService.selectColByUserId(userId);
        System.out.println(collects.size());
        mav.addObject("collect",collects);
        //System.out.println(collects.get(0).getMovie().getMovieName());
        return mav;
    }

    @RequestMapping(value = {"/addCol"} , method = {RequestMethod.GET})
    public String addCollect(Integer userId, Integer movieId,RedirectAttributes attr){
        collectService.addCollect(userId, movieId);
        attr.addAttribute("movieId",movieId);
        return "redirect:/movie/showMovie.html";
    }

//    @RequestMapping(value = {"/deleteCollect"} , method = {RequestMethod.GET})
//    public String deleteCollect(Integer userId, Integer movieId){
//        collectService.deleteCollect(userId, movieId);
//        return "111";
//    }

    @RequestMapping(value = {"/deleteCol"} , method = {RequestMethod.GET})
    public String deleteCollect(Integer collectId, HttpSession session, RedirectAttributes attr){
        collectService.delCollect(collectId);
        User user = (User) session.getAttribute("user");
        int userId = user.getUserId();
        attr.addAttribute("userId",userId);
        return "redirect:/collect/viewCol.html";
    }

    @RequestMapping(value = {"/deleteColMovie"} , method = {RequestMethod.GET})
    public String deleteCollectMovie(Integer movieId,Integer userId, HttpSession session, RedirectAttributes attr){
        collectService.deleteCollect(userId,movieId);
        attr.addAttribute("movieId",movieId);
        return "redirect:/movie/showMovie.html";
    }
}
