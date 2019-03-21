package com.tis.khu;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tis.common.CommonUtil;
import com.tis.mapper.UserMapper;
import com.tis.service.AdminService;
import com.tis.service.PagingService;
import com.tis.vo.BookVO;
import com.tis.vo.PagingVO;
import com.tis.vo.RentalVO;
import com.tis.vo.UserVO;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j

public class BookController {

	@Inject
	private AdminService adminService;

	@Inject
	private CommonUtil util;

	@Inject
	private PagingService pservice;

	@Inject
	private UserMapper uService;

	// 도서관Top
	@RequestMapping("/Book/BookTop")
	public void showBookTop() {
		// WEB-INF/views/Book/BookTop.jsp
	}

	// 도서관Foot
	@RequestMapping("/Book/BookFoot")
	public void showBookFoot() {
		// WEB-INF/views/Book/BookFoot.jsp
	}

	// 도서관Foot
	/*@RequestMapping("/Book/BookM")
	public String showBookM(HttpSession ses,Model m) {
		UserVO user=(UserVO)ses.getAttribute("loginUser");
		
		m.addAttribute("loginUser",user);
		
		return "/Book/BookM";
	}*/
	@RequestMapping("/Book/BookM")
	public void showBookM() {
		// WEB-INF/views/Book/BookM.jsp
	}

	// 도서관 도서정보상세보기
	@RequestMapping("/Book/BookInfo")
	public String showBookInfo(Model m, @RequestParam(defaultValue = "0") int bookNum, HttpSession ses,
			@ModelAttribute("rental") RentalVO rental) {
		if (bookNum == 0) {
			return util.addMsgBack(m, "잘못 들어온 경로입니다");
		}
		List<BookVO> bookInfo = adminService.bookInfo(bookNum);

		UserVO user = (UserVO) ses.getAttribute("loginUser");
		
		//로그인을 한 상태라면
		if (user != null) {
			rental.setStudentNum(user.getStudentNum().toString());
			Integer rentalNum = uService.isRental(rental);

			m.addAttribute("rental", rentalNum);
		}

		m.addAttribute("bookInfo", bookInfo);
		return "Book/BookInfo";
	}

	// 도서관 대출현황/예약
	@RequestMapping("/user/Book/BookBorrow")
	public String showBookBorrow(Model m, HttpSession ses) {
		UserVO loginUser = (UserVO) ses.getAttribute("loginUser");
		List<RentalVO> rentalList = uService.rentalList(loginUser.getStudentNum());
		log.info(rentalList);
		// WEB-INF/views/Book/BookBorrow.jsp
		m.addAttribute("rentalList", rentalList);
		return "/Book/BookBorrow";
	}

	@RequestMapping("/user/Book/BookBorrow2")
	public String showBookBorrow2(Model m, HttpSession ses) {
		UserVO loginUser = (UserVO) ses.getAttribute("loginUser");
		List<RentalVO> rentalList = uService.rentalList(loginUser.getStudentNum());
		log.info(rentalList);
		// WEB-INF/views/Book/BookBorrow2.jsp
		m.addAttribute("rentalList", rentalList);
		return "/Book/BookBorrow2";
	}

	// 도서관 대출현황/예약
	@RequestMapping("/user/Book/BookSeat")
	public String showBookSeat(HttpSession ses) {
		UserVO loginUser = (UserVO) ses.getAttribute("loginUser");
		// WEB-INF/views/Book/BookSeat.jsp
		return "/Book/BookSeat";
	}

	// 도서리스트
	@RequestMapping("/Book/BookList")
	public String showBookList(Model m, HttpServletRequest req, HttpSession ses,
			@ModelAttribute("paging") PagingVO paging) {
		// 검색어
		String key = paging.getFindKeyword();
		// 1. 총 게시글수 가져오기(검색포함)
		int totalCount = pservice.getTotalCountPaging(paging);

		paging.setTotalCount(totalCount);
		paging.setPagingBlock(5);
		paging.init(ses);

		// 2. 게시 목록 가져오기
		List<BookVO> booklist = pservice.selectBookAllpaging(paging);

		// 3. 게시판 페이지네비 문자열 가져오기
		String myctx = req.getContextPath();
		String loc = "Book/BookList";
		String str = paging.getPageNavi(myctx, loc);

		m.addAttribute("bookList", booklist);
		m.addAttribute("paging", paging);
		m.addAttribute("pageNavi", str);
		m.addAttribute("keyword", key);

		return "Book/BookList";
	}
	
	//열람실예약
	@RequestMapping("/Book/BookRoom")
	public void showBookRoom() {
		
	}

}
