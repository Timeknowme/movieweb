package com.xu.movieweb.service;

import com.xu.movieweb.model.Collect;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public abstract interface CollectService {

    List<Collect> selectColByUserId(Integer userid);

    void addCollect(Integer userId,Integer movieId);

    void deleteCollect(Integer userId,Integer movieId);

    Integer isCollected(Integer userId,Integer movieId);

    void delCollect(Integer collectId);
}
