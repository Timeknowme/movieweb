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
    public void addScore(Integer userId, Integer movieId, Integer scoreNum, String ip) {
        scoreMapper.addScore(userId,movieId,scoreNum,ip);
    }

    @Override
    public List<Score> selectScoByMovieId(Integer movieId) {
        return scoreMapper.selectScoByMovieId(movieId);
    }

    @Override
    public Integer listScoByMovieIdCount(Integer movieId) {
        return scoreMapper.listScoByMovieIdCount(movieId);
    }

    @Override
    public Integer isScore(Integer userId, Integer movieId) {
        return scoreMapper.isScored(userId, movieId);
    }

    @Override
    public List<Score> selectScoByUserId(Integer userId) {
        return scoreMapper.selectScoByUserId(userId);
    }

    @Override
    public Score searchScore(Integer userId, Integer movieId) {
        return scoreMapper.searchScore(userId, movieId);
    }

    @Override
    public Integer isScoredByIp(Integer movieId, String ip) {
        return scoreMapper.isScoredByIp(movieId, ip);
    }
}
