package com.xu.movieweb.service;

import com.xu.movieweb.model.Score;

import java.util.List;

public abstract interface ScoreService {

    void addScore(Integer userId, Integer movieId, Integer scoreNum);

    List<Score> selectScoByMovieId(Integer movieId);
}