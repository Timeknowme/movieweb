package com.xu.movieweb.model;

public class Score {
    private Integer scroeId;
    private Integer scoreNum;
    private User user;
    private Movie movie;

    public Integer getScroeId() {
        return scroeId;
    }

    public void setScroeId(Integer scroeId) {
        this.scroeId = scroeId;
    }

    public Integer getScoreNum() {
        return scoreNum;
    }

    public void setScoreNum(Integer scoreNum) {
        this.scoreNum = scoreNum;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }
}
