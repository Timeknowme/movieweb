package com.xu.movieweb.service;

import com.xu.movieweb.model.News;

import java.util.List;

public interface NewsService {

    News selectByNewsId(Integer newsId);

    void addNews(News news);

    void updateNews(News news, Integer newsId);

    void deleteNews(Integer newsId);

    void addNewsClick(Integer newsId);

    void setNewsRecommend(Integer newsId);

    void setNewsUnRecommend(Integer newsId);

    List<News> listNewsByTitle(String newsTitle);

    List<News> listNewsByRecommend();

    List<News> listNews();

    void updateNewsno(Integer newsId);

    void updateNewsyes(Integer newsId);
}
