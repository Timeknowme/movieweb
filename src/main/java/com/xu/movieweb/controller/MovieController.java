package com.xu.movieweb.controller;

import com.xu.movieweb.model.*;
import com.xu.movieweb.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping({"/movie"})
public class MovieController {

    @Resource
    MovieService movieService;

    @Resource
    CommentService commentService;

    @Resource
    ScoreService scoreService;

    @Resource
    CollectService collectService;

    @Resource
    NewsService newsService;

    @RequestMapping(value = {"/addMovie"}, method = {RequestMethod.POST})
    public String addmovie(Movie movie){
        movieService.addMovie(movie);
        return null;
    }

    @RequestMapping(value = {"/updateMovie"}, method = {RequestMethod.GET})
    public ModelAndView viewupdate(Integer movieId){
        ModelAndView mav = new ModelAndView("addmovie");
        Movie movie = movieService.selectByMovieId(movieId);
        mav.addObject("movie",movie);
        return mav;
    }

    @RequestMapping(value = {"/updateMovie"}, method = {RequestMethod.POST})
    public ModelAndView updatemovie(Movie movie,Integer movieId){
        ModelAndView mav = new ModelAndView("addmovie");
        movieService.updateMovie(movie,movieId);
        Movie newMovie = movieService.selectByMovieId(movieId);
        mav.addObject("movie",newMovie);
        return mav;
    }

    @RequestMapping(value = {"/deleteMovie"}, method = {RequestMethod.GET})
    public String deletemovie(Integer movieId){
        movieService.deleteMovie(movieId);
        return "111";
    }

    @RequestMapping(value = {"/showTop"}, method = {RequestMethod.GET})
    public ModelAndView showtop(){
        ModelAndView mav = new ModelAndView("addmovie");
        List<Movie> movieList = movieService.listMovieByTop();
        mav.addObject("movietop",movieList);
        return mav;
    }

    @RequestMapping(value = {"/searchMovieByName"}, method = {RequestMethod.POST})
    public ModelAndView searchmoviebyname(String movieName){
        ModelAndView mav = new ModelAndView("addmovie");
        List<Movie> movies = movieService.listMovieByName(movieName);
        mav.addObject("movies",movies);
        return mav;
    }

    @RequestMapping(value = {"/searchMovieByType"}, method = {RequestMethod.POST})
    public ModelAndView searchmoviebytype(String movieType){
        ModelAndView mav = new ModelAndView();
        List<Movie> movieList = movieService.listMovieByType(movieType);
        mav.addObject("movielist",movieList);
        return mav;
    }

    @RequestMapping(value = {"/showIndex"}, method = {RequestMethod.GET})
    public ModelAndView showindex(){
        ModelAndView mav = new ModelAndView("index");
        List<Movie> movies = movieService.listMovieByTop();
        List<News> news = newsService.listNewsByRecommend();
        mav.addObject("movies",movies);
        mav.addObject("news",news);
        return mav;
    }

    @RequestMapping(value = {"/showMovie"}, method = {RequestMethod.GET})
    public ModelAndView showmovie(Integer movieId, HttpSession session){
        ModelAndView mav = new ModelAndView("single");
//        int total = 0;
//        double finalscore = 0;
        User sessionUser = (User) session.getAttribute("user");
        if(sessionUser != null) {
            int userId = sessionUser.getUserId();
            Integer isCollect = collectService.isCollected(userId,movieId);
            if(isCollect > 0){
                session.setAttribute("isCollect",1);
            } else {
                session.removeAttribute("isCollect");
            }
            //判断用户是否已经为电影评分
            Integer isScore = scoreService.isScore(userId,movieId);
            if(isScore > 0){
                session.setAttribute("isScore",1);
            } else {
                session.removeAttribute("isScore");
            }
        }
        Movie movie = movieService.selectByMovieId(movieId);
        List<Comment> comments = commentService.selectComByMovieId(movieId);
//        List<Score> scores = scoreService.selectScoByMovieId(movieId);
//        Integer scoreCount = scoreService.listScoByMovieIdCount(movieId);
//        for (int i = 0; i < scores.size(); i++){
//            total += scores.get(i).getScoreNum();
//        }
//        finalscore = total / scoreCount;
        //判断用户是否已经收藏电影

        mav.addObject("movie",movie);
        mav.addObject("comments",comments);
        return mav;
    }
}
