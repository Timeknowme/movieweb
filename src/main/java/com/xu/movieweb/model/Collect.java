package com.xu.movieweb.model;

import java.util.Date;

public class Collect {
    private Integer collectId;
    private User user;
    private Movie movie;
    private Date collectUpdateTime;

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

    public Integer getCollectId() {
        return collectId;
    }

    public void setCollectId(Integer collectId) {
        this.collectId = collectId;
    }


    public Date getCollectUpdateTime() {
        return collectUpdateTime;
    }

    public void setCollectUpdateTime(Date collectUpdateTime) {
        this.collectUpdateTime = collectUpdateTime;
    }
}
