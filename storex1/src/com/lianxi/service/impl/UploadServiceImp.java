package com.lianxi.service.impl;


import org.springframework.stereotype.Service;

import org.springframework.web.multipart.MultipartFile;

import com.lianxi.service.UploadService;
import com.lianxi.utils.FileUtils;

@Service
public class UploadServiceImp implements UploadService {

	@Override
	public String uploadImg(MultipartFile file, String id) {
		//jsp中上传的文件：file
		return FileUtils.uploadFile(file);
	}

}
