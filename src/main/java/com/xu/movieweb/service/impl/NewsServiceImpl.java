package com.xu.movieweb.service.impl;

import com.xu.movieweb.dao.NewsMapper;
import com.xu.movieweb.model.News;
import com.xu.movieweb.service.NewsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {

    @Resource
    NewsMapper newsMapper;

    @Override
    public News selectByNewsId(Integer newsId) {
        return newsMapper.selectByNewsId(newsId);
    }

    @Override
    public void addNews(News news) {
        newsMapper.addNews(news);
    }

    @Override
    public void updateNews(News news, Integer newsId) {
        newsMapper.updateNews(news, newsId);
    }

    @Override
    public void deleteNews(Integer newsId) {
        newsMapper.deleteNews(newsId);
    }

    @Override
    public void addNewsClick(Integer newsId) {
        newsMapper.addNewsCilck(newsId);
    }

    @Override
    public void setNewsRecommend(Integer newsId) {
        newsMapper.setNewsRecommend(newsId);
    }

    @Override
    public void setNewsUnRecommend(Integer newsId) {
        newsMapper.setNewsUnRecommend(newsId);
    }

    @Override
    public List<News> listNewsByTitle(String newsTitle) {
        return newsMapper.listNewsByTitle(newsTitle);
    }

    @Override
    public List<News> listNewsByRecommend() {
        return newsMapper.listNewsByRecommend();
    }

    @Override
    public List<News> listNews() {
        return newsMapper.listNews();
    }
}
