package com.lianxi.controller;





import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.lianxi.entity.PageBean;
import com.lianxi.entity.Product;
import com.lianxi.service.ProductsService;
import com.lianxi.service.UploadService;

@Controller
public class ProductController {

	@Autowired
	ProductsService ProductsService;
	@Autowired
	UploadService uploadService;
	/**
	 * 分页查询图书
	 * @param category  种类
	 * @param currentPage  页码
	 * @param mv  
	 * @return
	 */
	@RequestMapping(value = "/showProductByPage",method = RequestMethod.GET)
	public ModelAndView showProductByPage(@RequestParam(value =  "category", required=false ,defaultValue = "") String category,
			@RequestParam(value="currentPage" , required=false ,defaultValue = "1" )  
	int currentPage,ModelAndView mv) {
		int pageSize = 4 ;//硬编码
		int offset = currentPage;
		PageBean ProductByPage =null;
		try {
			ProductByPage = ProductsService.queryProductByPage(category,offset,pageSize);
		} catch (Exception e) {
			mv.setViewName("404");
			mv.addObject("msg", "查询图书出现错误");
		}
		mv.setViewName("product_list");
		mv.addObject("bean", ProductByPage);
		return mv;
	}
	/**
	 * 查询图书详细信息
	 * @param id 图书id
	 * @param mv
	 * @return
	 */
	@RequestMapping(value = "/productinfo",method = RequestMethod.GET)
	public ModelAndView ProductInfoByID(@RequestParam(value =  "id") String id , ModelAndView mv) {
		Product queryProductById = ProductsService.queryProductById(id);
		if (queryProductById==null) {
			mv.setViewName("404");
			mv.addObject("msg", "错误,没有此图书");
		}
		else {
			mv.setViewName("info");
			mv.addObject("product", queryProductById);
		}
		return mv;
	}
	/**
	 * 上传图书图片
	 * @param file 文件
	 * @param id 图书id
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/uploadPng") //abc.png
	public String UploadImg( @RequestParam("file") MultipartFile file ,
			@RequestParam("id") String id,
			HttpServletRequest request ) {
		String result = uploadService.uploadImg(file, id);
		if ("error".equals(result)) {
			request.setAttribute("msg","格式错误或者上传失败");
			return "404";
		}
		return "redirect:productinfo.action?id="+id;
	}

	
}
