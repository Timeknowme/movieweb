package com.xu.movieweb.service.impl;

import com.xu.movieweb.dao.MoviepicMapper;
import com.xu.movieweb.model.Moviepic;
import com.xu.movieweb.service.MoviepicService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MoviepicServiceImpl implements MoviepicService {

    @Resource
    MoviepicMapper moviepicMapper;

    @Override
    public List<Moviepic> selectPicsByMovieId(Integer movieId) {
        List<Moviepic> moviepics = moviepicMapper.selectPicsByMovieId(movieId);
        return moviepics;
    }
}
