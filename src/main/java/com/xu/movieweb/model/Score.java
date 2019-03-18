package com.xu.movieweb.model;

public class Score {
    private Integer scoreId;
    private Integer scoreNum;
    private String scoreIp;
    private User user;
    private Movie movie;

    public String getScoreIp() {
        return scoreIp;
    }

    public void setScoreIp(String scoreIp) {
        this.scoreIp = scoreIp;
    }

    public Integer getScoreId() {
        return scoreId;
    }

    public void setScoreId(Integer scoreId) {
        this.scoreId = scoreId;
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
