package com.xu.movieweb.dao;

import com.xu.movieweb.model.Movie;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MovieMapper {

    Movie selectByMovieId(@Param("movieId") Integer movieId);

    void addMovie(@Param("movie") Movie movie);

    void updateMovie(@Param("movie") Movie movie,@Param("movieId") Integer movieId);

    void deleteMovie(@Param("movieId") Integer movieId);

    List<Movie> listMovieByName(@Param("movieName") String movieName);
}
