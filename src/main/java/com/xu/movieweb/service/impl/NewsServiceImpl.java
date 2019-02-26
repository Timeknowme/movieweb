package com.xu.movieweb.service.impl;

import com.xu.movieweb.model.News;
import com.xu.movieweb.service.NewsService;

import javax.annotation.Resource;

public class NewsServiceImpl implements NewsService {

    @Resource
    NewsService newsService;

    @Override
    public News selectByNewsId(Integer newsId) {
        return newsService.selectByNewsId(newsId);
    }
}
