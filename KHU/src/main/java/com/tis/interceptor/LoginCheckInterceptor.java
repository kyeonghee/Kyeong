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
 *  - 컨트롤러가 실행되기 전에 사전 처리할 작업이 있다면
 *    스프링에서는 인터셉터로 구현한다.
 * 1. 인터셉터 구현하기   
 *   [1] HandlerInterceptor인터페이스를 상속받아 구현
 *   		=> 추상메소드 3개를 모두 재정의해야 함
 *   [2] HandlerInterceptorAdapter추상클래스를 상속받아 구현
 *   	    => 필요한 메소드만 재정의
 * 2. servlet-context.xml에 인터셉터를 등록하고
 * 		매핑정보를 설정한다.   
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

	//컨트롤러를 실행하고 뷰를 실행한 후에 호출되는 메소드
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		log.info("afterCompletion호출됨..");
		//HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}

	//컨트롤러를 실행한 후 아직 뷰를 실행하기 전에 호출되는 메소드
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		log.info("postHandle호출됨..");
		//HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}

	//컨트롤러(handler)를 실행하기 전에 호출되는 메소드
	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler)
			throws Exception {
		log.info("preHandle호출됨..");
		HttpSession ses=request.getSession();
		UserVO loginUser=(UserVO)ses.getAttribute("loginUser");
		if(loginUser!=null) return true;
		else {
			//로그인하지 않았다면
			String msg="로그인해야 이용할 수 있어요";
			String loc=request.getContextPath()+"/Book/BookM";
			
			request.setAttribute("message", msg);
			request.setAttribute("loc", loc);
			
			//페이지 이동/WEB-INF/views/message.jsp
			String viewName="/WEB-INF/views/message.jsp";
			RequestDispatcher disp=request.getRequestDispatcher(viewName);
			disp.forward(request, response);
			
			return false;
		}
	}
	
}
