package com.xu.movieweb.service.impl;

import com.xu.movieweb.dao.UserMapper;
import com.xu.movieweb.model.User;
import com.xu.movieweb.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    UserMapper userMapper;

    @Override
    public void addUser(User user) {
        userMapper.addUser(user);
    }

    @Override
    public User selectUserByName(User user) {
        List<User> users = userMapper.selectUserByName(user);
        return users.size() > 0 ? users.get(0) : null;
    }

    @Override
    public User userLogin(String userName, String userPsd) {
        List<User> users = userMapper.userLogin(userName,userPsd);
        return users.size() > 0 ? users.get(0) : null;
    }

    @Override
    public void updateUser(User user,Integer userId) {
        userMapper.updateUser(user,userId);
    }

    @Override
    public User selectByUserId(Integer userId) {
        return userMapper.selectByUserId(userId);
    }

    @Override
    public String getPsdByUserId(Integer userId) {
        return userMapper.getPsdByUserId(userId);
    }

    @Override
    public void updatePsdByUserId(Integer userId, String newPsd) {
        userMapper.updatePsdByUserId(userId, newPsd);
    }

    @Override
    public void uploadHeadPic(Integer userId, String picAddress) {
        userMapper.uploadHeadPic(userId, picAddress);
    }

    @Override
    public List<User> listUser() {
        return userMapper.listUser();
    }

    @Override
    public void deleteUser(Integer userId) {
        userMapper.deleteUser(userId);
    }
}
