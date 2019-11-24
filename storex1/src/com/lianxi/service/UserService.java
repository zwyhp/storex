package com.lianxi.service;

import com.lianxi.entity.User;


public interface UserService {
    User queryUserByName(String name);
    int deleteUserByName(int id);
    int addUser(User user);
    int updateUserByName(User user);
}
