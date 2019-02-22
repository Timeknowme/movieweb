package com.xu.movieweb.dao;

import com.xu.movieweb.model.Score;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ScoreMapper {

    List<Score> selectScoByUserId(@Param("userId") Integer userId);

    List<Score> selectScoByMovieId(@Param("movieId") Integer movieId);

    void addScore(@Param("userId") Integer userId, @Param("movieId") Integer movieId, @Param("scoreNum") Integer scoreNum);
}
