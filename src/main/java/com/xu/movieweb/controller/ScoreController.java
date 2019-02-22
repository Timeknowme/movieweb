package com.xu.movieweb.controller;

import com.xu.movieweb.service.ScoreService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

@Controller
@RequestMapping({"/score"})
public class ScoreController {

    @Resource
    ScoreService scoreService;

    @RequestMapping(value = {"/addScore"} , method = {RequestMethod.POST})
    public String addscore(Integer userId, Integer movieId, Integer scoreNum){
        scoreService.addScore(userId, movieId, scoreNum);
        return "111";
    }
}
