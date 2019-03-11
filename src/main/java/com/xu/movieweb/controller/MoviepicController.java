package com.xu.movieweb.controller;

import com.xu.movieweb.model.Movie;
import com.xu.movieweb.model.Moviepic;
import com.xu.movieweb.service.MovieService;
import com.xu.movieweb.service.MoviepicService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping({"/moviepic"})
public class MoviepicController {

    @Resource
    private MoviepicService moviepicService;

    @Resource
    MovieService movieService;

    @RequestMapping(value = {"/showPics"} , method = {RequestMethod.GET})
    public ModelAndView viewpics(Integer movieId){
        ModelAndView mav = new ModelAndView();
        List<Moviepic> moviepics = moviepicService.selectPicsByMovieId(movieId);
        mav.addObject("mpic",moviepics);
        return mav;
    }

    @RequestMapping(value = {"/deletePics"}, method = {RequestMethod.GET})
    public String deletepics(Integer moviepicId){
        moviepicService.deleteMoviePic(moviepicId);
        return null;
    }

    @RequestMapping(value = {"/addPics"}, method = {RequestMethod.GET})
    public ModelAndView addpics(Integer movieId){
        ModelAndView mav = new ModelAndView("managemoviepic");
        List<Moviepic> moviepicList = moviepicService.selectPicsByMovieId(movieId);
        Movie movie = movieService.selectByMovieId(movieId);
        mav.addObject("movie",movie);
        mav.addObject("moviepicList",moviepicList);
        return mav;
    }

    @RequestMapping(value = {"/addPics"}, method = {RequestMethod.POST})
    public String addpics(Integer movieId, HttpServletRequest request, RedirectAttributes attr){
        String path="";
        String filePath = request.getSession().getServletContext().getRealPath("/");
        MultipartHttpServletRequest multipartRequest =(MultipartHttpServletRequest)request;
        MultipartFile file=multipartRequest.getFile("moviepic");
        String uuid = UUID.randomUUID().toString().replaceAll("-","");
        String contentType=file.getContentType();
        String imageName=contentType.substring(contentType.indexOf("/")+1);
        path="/jsp/img/movie/"+uuid+"."+imageName;
        File newfile=new File(filePath + path);
        try {
            file.transferTo(newfile);
        }
        catch(IllegalStateException e) {
            e.printStackTrace();
        }catch(IOException e) {
            e.printStackTrace();
        }
        moviepicService.addMoviePic(movieId, path);
        attr.addAttribute("movieId",movieId);
        return "redirect:/moviepic/addPics.html";
    }
}
