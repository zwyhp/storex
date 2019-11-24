package com.lianxi.Interceptor;


import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 拦截登录
 * @author lenovo
 *
 */
public class LoginInterceptor implements HandlerInterceptor {
//    在Controller处理之前调用, 返回false时整个请求结束   拦截请求
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        String requestURI = request.getRequestURI();
        Object user = request.getSession().getAttribute("user");
        if(user==null){
            //表示未登录或者登录失效
            System.out.println("链接"+requestURI+"进入拦截器");
            String header = request.getHeader("X-Requested-With");
            if("XMLHttpRequest".equals(header)){
                request.setAttribute("msg","登录会话超时，清重新登录" );
                request.getRequestDispatcher("/login.action").forward(request, response);
                return false;
            }
            request.setAttribute("msg","登录会话超时，清重新登录" );
            request.getRequestDispatcher("/login.action").forward(request, response);
            return false;
        }
        return true;
    }
    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }
    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
