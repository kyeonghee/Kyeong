package com.tis.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.tis.vo.UserVO;

import lombok.extern.log4j.Log4j;

/*Interceptor
 *  - ��Ʈ�ѷ��� ����Ǳ� ���� ���� ó���� �۾��� �ִٸ�
 *    ������������ ���ͼ��ͷ� �����Ѵ�.
 * 1. ���ͼ��� �����ϱ�   
 *   [1] HandlerInterceptor�������̽��� ��ӹ޾� ����
 *   		=> �߻�޼ҵ� 3���� ��� �������ؾ� ��
 *   [2] HandlerInterceptorAdapter�߻�Ŭ������ ��ӹ޾� ����
 *   	    => �ʿ��� �޼ҵ常 ������
 * 2. servlet-context.xml�� ���ͼ��͸� ����ϰ�
 * 		���������� �����Ѵ�.   
 * ------servlet-context.xml------------------------
 * <interceptors>
		<interceptor>
			<mapping path="/user/**"/>
			<beans:bean class="com.tis.common.interceptor.LoginCheckInterceptor"/>
		</interceptor>
	</interceptors>
 ---------------------------------------------------	
 * 
 * */
@Log4j
public class LoginCheckInterceptor implements HandlerInterceptor{

	//��Ʈ�ѷ��� �����ϰ� �並 ������ �Ŀ� ȣ��Ǵ� �޼ҵ�
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		log.info("afterCompletionȣ���..");
		//HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}

	//��Ʈ�ѷ��� ������ �� ���� �並 �����ϱ� ���� ȣ��Ǵ� �޼ҵ�
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		log.info("postHandleȣ���..");
		//HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}

	//��Ʈ�ѷ�(handler)�� �����ϱ� ���� ȣ��Ǵ� �޼ҵ�
	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler)
			throws Exception {
		log.info("preHandleȣ���..");
		HttpSession ses=request.getSession();
		UserVO loginUser=(UserVO)ses.getAttribute("loginUser");
		if(loginUser!=null) return true;
		else {
			//�α������� �ʾҴٸ�
			String msg="�α����ؾ� �̿��� �� �־��";
			String loc=request.getContextPath()+"/Book/BookM";
			
			request.setAttribute("message", msg);
			request.setAttribute("loc", loc);
			
			//������ �̵�/WEB-INF/views/message.jsp
			String viewName="/WEB-INF/views/message.jsp";
			RequestDispatcher disp=request.getRequestDispatcher(viewName);
			disp.forward(request, response);
			
			return false;
		}
	}
	
}
