package com.lianxi.service.impl;

import com.lianxi.entity.User;
import com.lianxi.mapper.UserMapper;
import com.lianxi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImp implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public User queryUserByName(String username) {
        return userMapper.queryUserByName(username);
    }

    @Override
    public int deleteUserByName(int id) {
        return 0;
    }

    @Override
    public int addUser(User user) {
    	int addUser = 0;
        addUser = userMapper.addUser(user);
    	return addUser;
    }

    @Override
    public int updateUserByName(User student) {
        if(userMapper.queryUserByName(student.getUsername())!=null){
            return userMapper.updateUserByName(student);
        }else {
            return 0;
        }
    }
}
