package com.xu.movieweb.service;

import com.xu.movieweb.model.Score;

import java.util.List;

public abstract interface ScoreService {

    void addScore(Integer userId, Integer movieId, Integer scoreNum, String ip);

    List<Score> selectScoByMovieId(Integer movieId);

    Integer listScoByMovieIdCount(Integer movieId);

    Integer isScore(Integer userId, Integer movieId);

    List<Score> selectScoByUserId(Integer userId);

    Score searchScore(Integer userId, Integer movieId);

    Integer isScoredByIp(Integer movieId, String ip);
}
