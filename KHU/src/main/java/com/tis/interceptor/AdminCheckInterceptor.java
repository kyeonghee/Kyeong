package com.tis.interceptor;

import java.lang.reflect.Method;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.tis.vo.AdminVO;

import lombok.extern.log4j.Log4j;

@Log4j
public class AdminCheckInterceptor extends HandlerInterceptorAdapter 
{

	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler)
			throws Exception {
		HandlerMethod method=(HandlerMethod)handler;
		//���� �����Ϸ��� �޼ҵ带 �ǹ�
		Method mObj=method.getMethod();
		log.info("Method: "+mObj);
		log.info("Bean: "+method.getBean());
		
		HttpSession ses=request.getSession();
		AdminVO user=(AdminVO)ses.getAttribute("loginAdmin");
		if(user!=null) {
			if(!user.getAdminID().equals("admin")) {
				String msg="�����ڸ� �̿� �����մϴ�";
				String loc="javascript:history.back()";
				
				request.setAttribute("message", msg);
				request.setAttribute("loc", loc);
				
				//������ �̵�/WEB-INF/views/message.jsp
				String viewName="/WEB-INF/views/message.jsp";
				RequestDispatcher disp=request.getRequestDispatcher(viewName);
				disp.forward(request, response);
				return false;
			}
		}
		return true;
	}
	

}
