package com.xu.movieweb.dao;

import com.xu.movieweb.model.Collect;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CollectMapper {

    List<Collect> selectColByUserId(@Param("userId") Integer userId);

    List<Collect> selectColByMovieId(@Param("movieId") Integer movieId);

    void addCollect(@Param("userId") Integer userId,@Param("movieId") Integer movieId);

    void deleteCollect(@Param("userId") Integer userId,@Param("movieId") Integer movieId);

    Integer isCollected(@Param("userId") Integer userId,@Param("movieId") Integer movieId);

    void delCollect(@Param("collectId") Integer collectId);
}
