package com.bk.crm.web.fliter;

import javax.servlet.*;
import java.io.IOException;

/**
 * @program: bjpowernodeProject-CRM
 * @description: 解决乱码的过滤器
 * @author: Mr.Chen
 * @create: 2022-02-17 12:54:09
 **/

public class EncodingFilter implements Filter {
    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {

        System.out.println("进入到过滤字符编码的过滤器");

//        过滤post请求中文参数乱码
        req.setCharacterEncoding("UTF-8");
//        过滤响应流响应中文乱码
        resp.setContentType("text/html;charset=UTF-8");

//        将请求放行
        chain.doFilter(req, resp);
    }
}
