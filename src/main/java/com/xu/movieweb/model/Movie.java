package com.xu.movieweb.model;

import java.util.Date;
import java.util.List;

public class Movie {
    private Integer movieId;
    private String movieName;
    private String movieDirector;
    private String movieWriter;
    private String movieActor;
    private String movieType;
    private String movieLocation;
    private String movieLanguage;
    private String movieDate;
    private String movieTime;
    private String movieBrief;
    private String movieHeadpic;
    private float movieFscore;
    private Date movieUpdatetime;
    private List<Collect> collects;
    private List<Comment> comments;
    private List<Score> scores;
    private List<Moviepic> moviepics;

    public float getMovieFscore() {
        return movieFscore;
    }

    public void setMovieFscore(float movieFscore) {
        this.movieFscore = movieFscore;
    }

    public List<Collect> getCollects() {
        return collects;
    }

    public void setCollects(List<Collect> collects) {
        this.collects = collects;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    public List<Score> getScores() {
        return scores;
    }

    public void setScores(List<Score> scores) {
        this.scores = scores;
    }

    public List<Moviepic> getMoviepics() {
        return moviepics;
    }

    public void setMoviepics(List<Moviepic> moviepics) {
        this.moviepics = moviepics;
    }

    public Integer getMovieId() {
        return movieId;
    }

    public void setMovieId(Integer movieId) {
        this.movieId = movieId;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getMovieDirector() {
        return movieDirector;
    }

    public void setMovieDirector(String movieDirector) {
        this.movieDirector = movieDirector;
    }

    public String getMovieWriter() {
        return movieWriter;
    }

    public void setMovieWriter(String movieWriter) {
        this.movieWriter = movieWriter;
    }

    public String getMovieActor() {
        return movieActor;
    }

    public void setMovieActor(String movieActor) {
        this.movieActor = movieActor;
    }

    public String getMovieType() {
        return movieType;
    }

    public void setMovieType(String movieType) {
        this.movieType = movieType;
    }

    public String getMovieLocation() {
        return movieLocation;
    }

    public void setMovieLocation(String movieLocation) {
        this.movieLocation = movieLocation;
    }

    public String getMovieLanguage() {
        return movieLanguage;
    }

    public void setMovieLanguage(String movieLanguage) {
        this.movieLanguage = movieLanguage;
    }

    public String getMovieDate() {
        return movieDate;
    }

    public void setMovieDate(String movieDate) {
        this.movieDate = movieDate;
    }

    public String getMovieTime() {
        return movieTime;
    }

    public void setMovieTime(String movieTime) {
        this.movieTime = movieTime;
    }

    public String getMovieBrief() {
        return movieBrief;
    }

    public void setMovieBrief(String movieBrief) {
        this.movieBrief = movieBrief;
    }

    public String getMovieHeadpic() {
        return movieHeadpic;
    }

    public void setMovieHeadpic(String movieHeadpic) {
        this.movieHeadpic = movieHeadpic;
    }

    public Date getMovieUpdatetime() {
        return movieUpdatetime;
    }

    public void setMovieUpdatetime(Date movieUpdatetime) {
        this.movieUpdatetime = movieUpdatetime;
    }
}
