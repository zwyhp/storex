package com.lianxi.mapper;

import com.lianxi.entity.User;


public interface UserMapper {
     User queryUserByName(String username);
     int deleteUserByName(int id);
     int addUser(User user);
     int updateUserByName(User student);

}
