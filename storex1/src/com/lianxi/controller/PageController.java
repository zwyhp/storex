package com.lianxi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

	@RequestMapping(value = "/login")
    public String tologin() {
    	return "login";
    }
	
	@RequestMapping(value="/index")
	public String toindex() {
		return "index";
	}
	@RequestMapping(value="/register")
	public String toregister() {
		return "register";
	}
	@RequestMapping(value="/modifyuserinfo")
	public String tomodifyuserinfo() {
		return "modifyuserinfo";
	}
	@RequestMapping(value="/myAccount")
	public String tomyAccount() {
		return "myAccount";
	}
}
