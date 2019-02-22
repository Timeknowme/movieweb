package com.xu.movieweb.service.impl;

import com.xu.movieweb.dao.ScoreMapper;
import com.xu.movieweb.model.Score;
import com.xu.movieweb.service.ScoreService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ScoreServiceImpl implements ScoreService {

    @Resource
    ScoreMapper scoreMapper;

    @Override
    public void addScore(Integer userId, Integer movieId, Integer scoreNum) {
        scoreMapper.addScore(userId,movieId,scoreNum);
    }

    @Override
    public List<Score> selectScoByMovieId(Integer movieId) {
        return scoreMapper.selectScoByMovieId(movieId);
    }
}
