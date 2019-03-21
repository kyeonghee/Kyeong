package com.tis.khu;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tis.common.CommonUtil;
import com.tis.vo.UserVO;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j

public class DormController {

	 

	@Inject
	private CommonUtil util;
	
	
	// ±â¼÷»ç ¸ÞÀÎ
	@RequestMapping("/user/Dorm/DormM")
	public String showDormM(HttpSession ses, Model m){
		UserVO Muser = (UserVO)ses.getAttribute("loginUser");
		m.addAttribute("loginUser", Muser);
		// WEB-INF/views/Dorm/DormM.jsp
		return "/Dorm/DormM";
	}
	// ±â¼÷»ç Top
	@RequestMapping("/Dorm/DormTop")
	public void showDormTop() {
		// WEB-INF/views/Dorm/DormTop.jsp
	}

	// ±â¼÷»ç Foot
	@RequestMapping("/Dorm/DormFoot")
	public void showDormFoot() {
		// WEB-INF/views/Dorm/DormFoot.jsp
	}

}
