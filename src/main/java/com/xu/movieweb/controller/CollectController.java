package com.xu.movieweb.controller;

import com.xu.movieweb.model.Collect;
import com.xu.movieweb.service.CollectService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping({"/collect"})
public class CollectController {

    @Resource
    private CollectService collectService;

    @RequestMapping(value = {"/viewCol"} , method = {RequestMethod.GET})
    public ModelAndView viewCollect(Integer userid) {
        ModelAndView mav = new ModelAndView("col");
        List<Collect> collects = collectService.selectColByUserId(userid);
        mav.addObject("collect",collects);
        //System.out.println(collects.get(0).getMovie().getMovieName());
        return mav;
    }

    @RequestMapping(value = {"/addCol"} , method = {RequestMethod.GET})
    public String addCollect(Integer userId, Integer movieId){
        collectService.addCollect(userId, movieId);
        return "111";
    }

    @RequestMapping(value = {"/deleteCol"} , method = {RequestMethod.GET})
    public String deleteCollect(Integer userId, Integer movieId){
        collectService.deleteCollect(userId, movieId);
        return "111";
    }
}
