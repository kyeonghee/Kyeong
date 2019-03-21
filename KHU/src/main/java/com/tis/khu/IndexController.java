package com.tis.khu;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tis.vo.UserVO;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class IndexController {

	@RequestMapping("/Umain")
	public void showUmain() {
		// WEB-INF/views/Umain.jsp
	}

	@RequestMapping("uniM")
	public void showUniM(Model m, HttpSession ses) {
		UserVO user=(UserVO)ses.getAttribute("loginUser");
		m.addAttribute("loginUser",user);
		// WEB-INF/views/foot.jsp
	}

	@RequestMapping("middle")
	public void showMiddle() {
		// WEB-INF/views/foot.jsp
	}

	@RequestMapping("/top")
	public void showTop() {
		// WEB-INF/views/top.jsp
	}

	@RequestMapping("/foot")
	public void showFoot() {
		// WEB-INF/views/foot.jsp
	}

	@RequestMapping("/index")
	public void showIndex() {
		// WEB-INF/views/index.jsp
	}

	@RequestMapping("/calendar")
	public void showcalendar() {
		// WEB-INF/views/calendar.jsp
	}
}
