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
}
