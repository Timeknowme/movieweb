package com.xu.movieweb.model;

public class Moviepic {
    private Integer mpicId;
    private String mpicAddress;
    private Movie movie;

    public Integer getMpicId() {
        return mpicId;
    }

    public void setMpicId(Integer mpicId) {
        this.mpicId = mpicId;
    }

    public String getMpicAddress() {
        return mpicAddress;
    }

    public void setMpicAddress(String mpicAddress) {
        this.mpicAddress = mpicAddress;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }
}
