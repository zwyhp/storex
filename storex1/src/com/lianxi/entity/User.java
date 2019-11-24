package com.lianxi.entity;

import org.springframework.stereotype.Component;

@Component
public class User {
	private String username;
	private String userpwd;
	private String sex;
	private Integer age;
	private Integer phone;
	private String email;
	public User() {

	}

	public User(String username, String userpwd, String sex, Integer age, Integer phone, String email) {
		this.username = username;
		this.userpwd = userpwd;
		this.sex = sex;
		this.age = age;
		this.phone = phone;
		this.email = email;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public Integer getPhone() {
		return phone;
	}
	public void setPhone(Integer phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
