package com.xu.movieweb.service.impl;

import com.xu.movieweb.dao.CollectMapper;
import com.xu.movieweb.model.Collect;
import com.xu.movieweb.service.CollectService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CollectServiceImpl implements CollectService {

    @Resource
    CollectMapper collectMapper;

    @Override
    public List<Collect> selectColByUserId(Integer userid) {
        List<Collect> collects = collectMapper.selectColByUserId(userid);
        return collects;
    }

    @Override
    public void addCollect(Integer userId, Integer movieId) {
        collectMapper.addCollect(userId,movieId);
    }

    @Override
    public void deleteCollect(Integer userId, Integer movieId) {
        collectMapper.deleteCollect(userId, movieId);
    }
}
