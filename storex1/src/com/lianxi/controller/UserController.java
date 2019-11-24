package com.lianxi.controller;

import com.lianxi.entity.User;
import com.lianxi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;


@Controller
@RequestMapping("/admin")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String userlogin(@RequestParam("username") String username , @RequestParam("userpwd") String userpwd, HttpServletRequest request){
        HttpSession session = request.getSession();
        if (username == null || userpwd == null || "".equals(username) || "".equals(userpwd)){
            request.setAttribute("msg", "用户或密码为空");
        }else{
            User user = userService.queryUserByName(username);
            if (user.getUserpwd().equals(userpwd)){
                session.setAttribute("user",user);
                session.setMaxInactiveInterval(60*60);
                return "myAccount";
            }else{
                request.setAttribute("msg","密码错误");
                return "login";
            }
        }
        return "login";
    }
    @RequestMapping("/register")
    public String register(User user, HttpServletRequest request){
    	if (user.getUsername()==null || user.getUsername() == "") {
    		request.setAttribute("msg", "注冊失败 用户名不能为空");
       	 	return "register";
		}
    	if (user.getUsername()==null || user.getUsername() == "") {
    		request.setAttribute("msg", "注册失败密码不能能空");
    		return "register";
    	}
    	if (user.getEmail()==null || user.getEmail() == "") {
    		request.setAttribute("msg", "注册失败邮箱不能为空");
    		return "register";
    	}
    	int i = userService.addUser(user);
        if (i>0) {
        	request.setAttribute("msg", "注册成功请登录");
        	 return "login";
		}else {
			request.setAttribute("msg", "注册失败");
			return "register";
		}
    	
    }
   
    @PostMapping("/updateuser")
    public String updateUser(User user, HttpServletRequest request){
    	System.out.println(user.getUsername());
    	int i = userService.updateUserByName(user);
        if (i>0) {
        	request.setAttribute("msg", "修改成功请登录");
        	 return "login";
		}else {
			request.setAttribute("msg", "修改失败");
			return "modifyuserinfo";
		}
    	
    }
    
    @RequestMapping(value="/loginout",method=RequestMethod.GET)
    public String loginOut(HttpServletRequest request){
    	request.getSession().removeAttribute("user");
		return "redirect:/login.action"; 
    }
}
