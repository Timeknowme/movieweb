package com.xu.movieweb.controller;

import com.xu.movieweb.model.Moviepic;
import com.xu.movieweb.service.MoviepicService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping({"/moviepic"})
public class MoviepicController {

    @Resource
    private MoviepicService moviepicService;

    @RequestMapping(value = {"/showpics"} , method = {RequestMethod.GET})
    public ModelAndView viewpics(Integer movieId){
        ModelAndView mav = new ModelAndView("col");
        List<Moviepic> moviepics = moviepicService.selectPicsByMovieId(movieId);
        mav.addObject("mpic",moviepics);
        return mav;
    }
}
