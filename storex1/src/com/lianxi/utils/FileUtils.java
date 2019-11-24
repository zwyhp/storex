package com.lianxi.utils;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import org.apache.commons.io.FilenameUtils;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.multipart.MultipartFile;

/**
 * 上传文件工具类
 * @author lenovo
 *
 */
public class FileUtils {
	private static SimpleDateFormat sdf2=new SimpleDateFormat("yyyyMMddHHmmssSSS");
	private static Random random=new Random();
	
	/**
	 * 生成文件名使用时间+4位随机数
	 * @param suffix 文件名称
	 */
	public static String createFileNameUseTime(String fileName) {
		String fileSuffix=fileName.substring(fileName.lastIndexOf("."),fileName.length());
		String time=sdf2.format(new Date());
		Integer num=random.nextInt(9000)+1000;
		return time+num+fileSuffix;
	}
	
	public static String uploadFile(MultipartFile file) {
		OutputStream out =null;
		InputStream input = null;
		String fileName;
		String createFileNameUseTime;
		byte[] bs = new byte[1024];
		int len = -1;
		try {
			input = file.getInputStream();
			fileName = file.getOriginalFilename();
			String extension = FilenameUtils.getExtension(fileName);
			if (!"jpg".equals(extension) ){
				return "error";
			}
			String uploadPath = ContextLoader.getCurrentWebApplicationContext().getServletContext().getRealPath("/");
			createFileNameUseTime = createFileNameUseTime(fileName);
			out = new FileOutputStream(uploadPath+"//client//productImg//9//"+createFileNameUseTime) ;
			while(( len = input.read(bs)) !=-1 ) {
				out.write(bs, 0, len);
			}
		} catch (IOException e) {
			e.printStackTrace();
			return "error";
		}finally {
			try {
				if (out!=null || input !=null) {
					out.close();
					input.close();
				}
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "error";
			}
		}
		//将file上传到服务器中的 某一个硬盘文件中
		System.out.println("上传成功！");
		return "/productImg/9/"+createFileNameUseTime;
	}
}
