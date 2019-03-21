package com.tis.khu;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.tis.common.CommonUtil;
import com.tis.service.UserService;
import com.tis.vo.RentalVO;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class UserController {
	
	@Inject
	private UserService uService;
	
	@Inject
	private CommonUtil util;
	
	@PostMapping("/user/Book/BookBorrow")
	public String insertRental(Model m, @ModelAttribute("rental") RentalVO rental) {
		log.info(rental); 
		
		//대여정보 삽입(대여중으로 상태변환)
		int n = uService.insertRental(rental);
		if(n>0) {
			uService.updateRental1(rental.getBookNum());
		}
		String msg=(n>0)?"대여성공":"대여실패";
		String loc=(n>0)? "BookBorrow":"javascript:history.back()";
		log.info(rental);
		return util.addMsgLoc(m, msg, loc);
	}
	
	@PostMapping("/user/Book/BookBorrow2")
	public String DeleteRental(Model m, @ModelAttribute("rental") RentalVO rental) {
		log.info(rental);
		
		//대여정보 삭제(대여가능으로 상태변환)
		int n= uService.updateRental2(rental.getBookNum());
		if(n>0) {
			uService.DeleteRental(rental);
		}
		String msg=(n>0)?"반납성공":"반납실패";
		String loc=(n>0)?"BookBorrow2":"javascript:history.back()";
		return util.addMsgLoc(m, msg, loc);
	}
	

}
