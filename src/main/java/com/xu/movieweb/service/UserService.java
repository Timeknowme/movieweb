package com.xu.movieweb.service;

import com.xu.movieweb.model.User;

public abstract interface UserService {

    void addUser(User user);

    User selectUserByName(User user);

    User userLogin(String userName,String userPsd);

    void updateUser(User user,Integer userId);

    User selectByUserId(Integer userId);

    String getPsdByUserId(Integer userId);

    void updatePsdByUserId(Integer userId,String newPsd);

    void uploadHeadPic(Integer userId,String picAddress);
}
