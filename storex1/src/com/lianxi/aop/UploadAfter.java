package com.lianxi.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.lianxi.service.ProductsService;
import com.lianxi.service.impl.ProductsServiceImp;

/**
 * 增强上传图片修改图片地址
 * @author lenovo
 *
 */
@Aspect
@Component
public class UploadAfter {
	
	@Autowired
	ProductsService productsService;
	/**
	 * 上传图片的同时 更新数据库的信息
	 * @param joinPoint
	 * @param returningValue
	 */
	@AfterReturning(pointcut = "execution(public String uploadImg(..))",returning="returningValue")
    public void beforeMethod(JoinPoint joinPoint,String returningValue){

        Object[] args = joinPoint.getArgs();
       
        System.out.println("方法返回值"+returningValue);  
        if(!returningValue.equals("error")) {
        	//ProductsService productsService =new ProductsServiceImp();
         productsService.updateImgById((String)args[1], returningValue);
        }
        
        System.out.println("代理对象自己:" + joinPoint.getThis());
    }


}
