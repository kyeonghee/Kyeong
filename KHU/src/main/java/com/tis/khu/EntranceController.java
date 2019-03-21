package com.tis.khu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j

@RequestMapping("/Entrance")
public class EntranceController {

	//입시홈페이지 메인
	@RequestMapping("/Entrance")
	public void showEntrance() {
		// WEB-INF/views/Entrance/Entrance.jsp
	}
	
	//입시홈페이지 top
	@RequestMapping("/EntranceTop")
	public void showEntranceTop() {
		// WEB-INF/views/Entrance/EntranceTop.jsp
	}
	
	//합격자, 등록금 조회
	@RequestMapping("/Echeck")
	public void showEcheck() {
		// WEB-INF/views/Entrance/Echeck.jsp
	}
	
	//수험번호찾기
	@RequestMapping("/NumberFind")
	public void NumberFind() {
		// WEB-INF/views/Entrance/NumberFind.jsp
	}
	
}
