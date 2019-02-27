package com.xu.movieweb.service;

import com.xu.movieweb.model.Admin;

public abstract interface AdminService {

    Admin adminLogin(String adminName,String adminPsd);
}
