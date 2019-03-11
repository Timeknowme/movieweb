package com.xu.movieweb.controller;

import com.xu.movieweb.model.Score;
import com.xu.movieweb.model.User;
import com.xu.movieweb.service.MovieService;
import com.xu.movieweb.service.ScoreService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
    public String addscore(Integer userId, Integer movieId, Integer scoreNum, RedirectAttributes attr){
        float total = 0;
        float fscore = 0;
        scoreService.addScore(userId, movieId, scoreNum);
        List<Score> scores = scoreService.selectScoByMovieId(movieId);
        Integer scoreCount = scoreService.listScoByMovieIdCount(movieId);
        float count = scoreCount;
        for (int i = 0; i < scores.size(); i++){
            total += scores.get(i).getScoreNum();
        }
        fscore = total / count;
        float b = (float)(Math.round(fscore*10))/(10);
        movieService.setMovieScore(movieId,b);
        attr.addAttribute("movieId",movieId);
        return "redirect:/movie/showMovie.html";
    }

    @RequestMapping(value = {"/showScore"}, method = {RequestMethod.GET})
    public ModelAndView showscore(Integer userId){
        ModelAndView mav = new ModelAndView("myscore");
//        User user = (User) session.getAttribute("user");
//        Integer userId = user.getUserId();
        List<Score> scores = scoreService.selectScoByUserId(userId);
        mav.addObject("scores",scores);
        return mav;
    }
}
