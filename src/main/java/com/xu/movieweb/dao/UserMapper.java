package com.xu.movieweb.dao;

import com.xu.movieweb.model.Collect;
import com.xu.movieweb.model.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public abstract interface UserMapper{

    User selectByUserId(@Param("userId") Integer userId);

    void addUser(@Param("user") User user);

    List<User> selectUserByName(@Param("user") User user);

    List<User> userLogin(@Param("userName") String userName,@Param("userPsd") String userPsd);

    void updateUser(@Param("user") User user,@Param("userId") Integer userId);

}