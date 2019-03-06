package com.xu.movieweb.controller;

import com.xu.movieweb.model.Score;
import com.xu.movieweb.model.User;
import com.xu.movieweb.service.MovieService;
import com.xu.movieweb.service.ScoreService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping({"/score"})
public class ScoreController {

    @Resource
    ScoreService scoreService;

    @Resource
    MovieService movieService;

    @RequestMapping(value = {"/addScore"} , method = {RequestMethod.POST})
    public String addscore(Integer userId, Integer movieId, Integer scoreNum){
        int total = 0;
        int fscore = 0;
        scoreService.addScore(userId, movieId, scoreNum);
        List<Score> scores = scoreService.selectScoByMovieId(movieId);
        Integer scoreCount = scoreService.listScoByMovieIdCount(movieId);
        for (int i = 0; i < scores.size(); i++){
            total += scores.get(i).getScoreNum();
        }
        fscore = total / scoreCount;
        movieService.setMovieScore(movieId,fscore);
        return "111";
    }

    @RequestMapping(value = {"/showScore"}, method = {RequestMethod.GET})
    public ModelAndView showscore(HttpSession session){
        ModelAndView mav = new ModelAndView();
        User user = (User) session.getAttribute("user");
        Integer userId = user.getUserId();
        List<Score> scores = scoreService.selectScoByUserId(userId);
        mav.addObject("scores",scores);
        return mav;
    }
}
