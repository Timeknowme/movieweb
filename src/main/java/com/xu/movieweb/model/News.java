package com.xu.movieweb.model;

import java.util.Date;

public class News {
    private Integer newsId;
    private String newsTitle;
    private String newsAuthor;
    private String newsContent;
    private Integer newsClick;
    private Integer newsIsRecommend;
    private Date newsCreatetime;
    private Integer newsStatus;

    public Integer getNewsStatus() {
        return newsStatus;
    }

    public void setNewsStatus(Integer newsStatus) {
        this.newsStatus = newsStatus;
    }

    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
    }

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle;
    }

    public String getNewsAuthor() {
        return newsAuthor;
    }

    public void setNewsAuthor(String newsAuthor) {
        this.newsAuthor = newsAuthor;
    }

    public String getNewsContent() {
        return newsContent;
    }

    public void setNewsContent(String newsContent) {
        this.newsContent = newsContent;
    }

    public Integer getNewsClick() {
        return newsClick;
    }

    public void setNewsClick(Integer newsClick) {
        this.newsClick = newsClick;
    }

    public Integer getNewsIsRecommend() {
        return newsIsRecommend;
    }

    public void setNewsIsRecommend(Integer newsIsRecommend) {
        this.newsIsRecommend = newsIsRecommend;
    }

    public Date getNewsCreatetime() {
        return newsCreatetime;
    }

    public void setNewsCreatetime(Date newsCreatetime) {
        this.newsCreatetime = newsCreatetime;
    }
}
