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

    @RequestMapping(value = {"/addNews"}, method = {RequestMethod.POST})
    public String addnews(News news){
        newsService.addNews(news);
        return null;
    }

    @RequestMapping(value = {"/updateNews"}, method = {RequestMethod.GET})
    public ModelAndView viewupdate(Integer newsId){
        ModelAndView mav = new ModelAndView();
        News news = newsService.selectByNewsId(newsId);
        mav.addObject("news",news);
        return mav;
    }

    @RequestMapping(value = {"/updateNews"}, method = {RequestMethod.POST})
    public ModelAndView updatenews(News news,Integer newsId){
        ModelAndView mav = new ModelAndView();
        newsService.updateNews(news, newsId);
        News newNews = newsService.selectByNewsId(newsId);
        mav.addObject("news",newNews);
        return mav;
    }

    @RequestMapping(value = {"/deleteNews"}, method = {RequestMethod.GET})
    public String deletenews(Integer newsId){
        newsService.deleteNews(newsId);
        return null;
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
        return null;
    }

    @RequestMapping(value = {"/setNewsUnRecommend"}, method = {RequestMethod.GET})
    public String setnewsunrecommend(Integer newsId){
        newsService.setNewsUnRecommend(newsId);
        return null;
    }

    @RequestMapping(value = {"/showNews"}, method = {RequestMethod.GET})
    public ModelAndView shownews(Integer newsId){
        ModelAndView mav = new ModelAndView();
        News news = newsService.selectByNewsId(newsId);
        newsService.addNewsClick(newsId);
        mav.addObject("news",news);
        return mav;
    }
}
