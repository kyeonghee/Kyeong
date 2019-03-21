package com.tis.khu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j

@RequestMapping("/Entrance")
public class EntranceController {

	//�Խ�Ȩ������ ����
	@RequestMapping("/Entrance")
	public void showEntrance() {
		// WEB-INF/views/Entrance/Entrance.jsp
	}
	
	//�Խ�Ȩ������ top
	@RequestMapping("/EntranceTop")
	public void showEntranceTop() {
		// WEB-INF/views/Entrance/EntranceTop.jsp
	}
	
	//�հ���, ��ϱ� ��ȸ
	@RequestMapping("/Echeck")
	public void showEcheck() {
		// WEB-INF/views/Entrance/Echeck.jsp
	}
	
	//�����ȣã��
	@RequestMapping("/NumberFind")
	public void NumberFind() {
		// WEB-INF/views/Entrance/NumberFind.jsp
	}
	
}
