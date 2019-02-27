package com.xu.movieweb.dao;

import com.xu.movieweb.model.Admin;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public abstract interface AdminMapper {

    List<Admin> adminLogin(@Param("adminName") String adminName, @Param("adminPsd") String adminPsd);
}
