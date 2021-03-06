package com.xu.movieweb.service;

import com.xu.movieweb.model.Movie;

import java.util.List;

public abstract interface MovieService {

    Movie selectByMovieId(Integer movieId);

    void addMovie(Movie movie);

    void updateMovie(Movie movie,Integer movieId);

    void deleteMovie(Integer movieId);

    List<Movie> listMovieByName(String movieName);

    List<Movie> listMovieByTop();

    List<Movie> listMovieByType(String movieType);

    void setMovieScore(Integer movieId, float movieScore);

    List<Movie> listMovie();
}
