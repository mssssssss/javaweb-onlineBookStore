package com.bookstore.filter;

import javax.servlet.*;
import java.io.IOException;

//使用中文乱码处理过滤器
public class CharSetFilter implements Filter{

	private String charSet ;
	@Override
	public void init(FilterConfig config) throws ServletException {
		charSet = config.getInitParameter("charSet");
	}
	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		//中文乱码处理
		response.setCharacterEncoding(charSet);
		request.setCharacterEncoding(charSet);
		chain.doFilter(request, response);
	}
	@Override
	public void destroy() {
		
	}
}

