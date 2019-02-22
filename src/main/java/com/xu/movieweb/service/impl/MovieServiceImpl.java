package com.xu.movieweb.service.impl;

import com.xu.movieweb.dao.MovieMapper;
import com.xu.movieweb.model.Movie;
import com.xu.movieweb.service.MovieService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MovieServiceImpl implements MovieService {

    @Resource
    MovieMapper movieMapper;

    @Override
    public Movie selectByMovieId(Integer movieId) {
        return movieMapper.selectByMovieId(movieId);
    }

    @Override
    public void addMovie(Movie movie) {
        movieMapper.addMovie(movie);
    }

    @Override
    public void updateMovie(Movie movie, Integer movieId) {
        movieMapper.updateMovie(movie,movieId);
    }

    @Override
    public void deleteMovie(Integer movieId) {
        movieMapper.deleteMovie(movieId);
    }

    @Override
    public List<Movie> listMovieByName(String movieName) {
        return movieMapper.listMovieByName(movieName);
    }
}
