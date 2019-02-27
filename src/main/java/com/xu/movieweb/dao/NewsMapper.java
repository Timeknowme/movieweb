package com.xu.movieweb.dao;

import com.xu.movieweb.model.News;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NewsMapper {

    News selectByNewsId(@Param("newsId") Integer newsId);

    void addNews(@Param("news") News news);

    void updateNews(@Param("news") News news, @Param("newsId") Integer newsId);

    void deleteNews(@Param("newsId") Integer newsId);

    void addNewsCilck(@Param("newsId") Integer newsId);

    void setNewsRecommend(@Param("newsId") Integer newsId);

    void setNewsUnRecommend(@Param("newsId") Integer newsId);

    List<News> listNewsByTitle(@Param("newsTitle") String newsTitle);

    List<News> listNewsByRecommend();
}
