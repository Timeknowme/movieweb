package com.xu.movieweb.service.impl;

import com.xu.movieweb.dao.AdminMapper;
import com.xu.movieweb.model.Admin;
import com.xu.movieweb.service.AdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Resource
    AdminMapper adminMapper;

    @Override
    public Admin adminLogin(String adminName, String adminPsd) {
        List<Admin> admins = adminMapper.adminLogin(adminName, adminPsd);
        return admins.size() > 0 ? admins.get(0) : null;
    }
}
