package com.xu.movieweb.dao;

import com.xu.movieweb.model.Moviepic;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MoviepicMapper {

    List<Moviepic> selectPicsByMovieId(@Param("movieId") Integer movieId);

    void addMoviePic(@Param("movieId") Integer movieId, @Param("picAddress") String picAddress);

    void deleteMoviePic(@Param("moviepicId") Integer moviepicId);
}
