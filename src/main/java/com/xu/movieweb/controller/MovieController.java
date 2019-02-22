package com.xu.movieweb.controller;

import com.xu.movieweb.model.Movie;
import com.xu.movieweb.service.MovieService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
@RequestMapping({"/movie"})
public class MovieController {

    @Resource
    MovieService movieService;

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
}
