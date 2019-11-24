package com.lianxi.service;


import org.springframework.web.multipart.MultipartFile;

public interface UploadService {
	String uploadImg(MultipartFile file ,String id);
}
