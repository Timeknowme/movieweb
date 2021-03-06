package com.xu.movieweb.service;

import com.xu.movieweb.model.Moviepic;

import java.util.List;

public interface MoviepicService {

    List<Moviepic> selectPicsByMovieId(Integer movieId);

    void addMoviePic(Integer movieId,String picAddress);

    void deleteMoviePic(Integer moviepicId);
}
