package com.xu.movieweb.controller;

import com.xu.movieweb.model.News;
import com.xu.movieweb.service.NewsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping({"/news"})
public class NewsController{

    @Resource
    NewsService newsService;

    @RequestMapping(value = {"/addNews"}, method = {RequestMethod.GET})
    public ModelAndView addnews(){
        ModelAndView mav = new ModelAndView("addnews");
        return mav;
    }

    @RequestMapping(value = {"/addNews"}, method = {RequestMethod.POST})
    public String addnews(News news){
        newsService.addNews(news);
        return "redirect:/news/listAllNews.html";
    }

    @RequestMapping(value = {"/updateNews"}, method = {RequestMethod.GET})
    public ModelAndView viewupdate(Integer newsId){
        ModelAndView mav = new ModelAndView("editnews");
        News news = newsService.selectByNewsId(newsId);
        mav.addObject("news",news);
        return mav;
    }

    @RequestMapping(value = {"/updateNews"}, method = {RequestMethod.POST})
    public ModelAndView updatenews(News news,Integer newsId){
        ModelAndView mav = new ModelAndView("editnews");
        newsService.updateNews(news, newsId);
        News newNews = newsService.selectByNewsId(newsId);
        mav.addObject("news",newNews);
        return mav;
    }

    @RequestMapping(value = {"/deleteNews"}, method = {RequestMethod.GET})
    public String deletenews(Integer newsId){
        newsService.deleteNews(newsId);
        return "redirect:/news/listAllNews.html";
    }

    @RequestMapping(value = {"/searchNewsByName"}, method = {RequestMethod.POST})
    public ModelAndView searchnewsbyname(String newsTitle){
        ModelAndView mav = new ModelAndView();
        List<News> newsList = newsService.listNewsByTitle(newsTitle);
        mav.addObject("newslist",newsList);
        return mav;
    }

    @RequestMapping(value = {"/setNewsRecommend"}, method = {RequestMethod.GET})
    public String setnewsrecommend(Integer newsId){
        newsService.setNewsRecommend(newsId);
        return "redirect:/news/listAllNews.html";
    }

    @RequestMapping(value = {"/setNewsUnRecommend"}, method = {RequestMethod.GET})
    public String setnewsunrecommend(Integer newsId){
        newsService.setNewsUnRecommend(newsId);
        return "redirect:/news/listAllNews.html";
    }

    @RequestMapping(value = {"/showNews"}, method = {RequestMethod.GET})
    public ModelAndView shownews(Integer newsId){
        ModelAndView mav = new ModelAndView();
        News news = newsService.selectByNewsId(newsId);
        newsService.addNewsClick(newsId);
        mav.addObject("news",news);
        return mav;
    }

    @RequestMapping(value = {"/listAllNews"}, method = {RequestMethod.GET})
    public ModelAndView listallnews(){
        ModelAndView mav = new ModelAndView("managenews");
        List<News> newsList = newsService.listNews();
        mav.addObject("newsList",newsList);
        return mav;
    }
}
