package com.xu.movieweb.dao;

import com.xu.movieweb.model.News;
import org.apache.ibatis.annotations.Param;

public interface NewsMapper {

    News selectByNewsId(@Param("newsId") Integer newsId);
}
