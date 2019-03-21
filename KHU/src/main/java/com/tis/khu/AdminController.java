package com.tis.khu;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tis.common.CommonUtil;
import com.tis.service.AdminService;
import com.tis.vo.AdminVO;
import com.tis.vo.BookVO;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/Admin")
public class AdminController {
	
	@Inject
	private AdminService adminService;
	
	@Inject
	private CommonUtil util;
	
	
	// 관리자 페이지
	@RequestMapping("/AdminPage")
	public void AdminPage(Model m,HttpSession ses) {
		AdminVO admin=(AdminVO)ses.getAttribute("adminUser");
		System.out.println("admin===="+admin);
		m.addAttribute("adminUser",admin);
		// WEB-INF/views/Admin/AdminPage.jsp
	}

	// 관리자 Top
	@RequestMapping("/AdminTop")
	public void AdminTop() {
		// WEB-INF/views/Admin/AdminTop.jsp
	}

	// 관리자 도서등록
	@RequestMapping("/AdminBook")
	public void AdminBook() {
		// WEB-INF/views/Admin/AdminBook.jsp
	}
		
	//form태그 action이름 bookInsert(AdminBook.jsp)
	@PostMapping("/bookInsert")
	public String bookInsert(Model m, HttpServletRequest req, @Valid @ModelAttribute("book") BookVO book, BindingResult res) {
		/*if(res.hasErrors()) {
			return "Admin/AdminBook";
		}*/
		log.info(book);
		String upDir = req.getServletContext().getRealPath("/book_images");
		log.info(upDir);
		MultipartHttpServletRequest mr = (MultipartHttpServletRequest)req;
		
		List<MultipartFile> mlist = mr.getFiles("bookImage");
		if(mlist!=null) {
			for(int i=0; i<mlist.size(); i++) {
				MultipartFile mf = mlist.get(i);
				try {
					mf.transferTo(new File(upDir,mf.getOriginalFilename()));
					if(i==0) {
						book.setBookImage(mf.getOriginalFilename());
					}//if
					log.info(book);
				}catch(IOException e) {
					log.error("상품등록 파일 업로드 중 에러: "+e.getMessage());
				}
			}//for
		}//if
		
		int n = adminService.insertBook(book);
		String msg=(n>0)? "등록성공":"등록실패";
		String loc=(n>0)? "AdminPage":"javascript:history.back()";
		return util.addMsgLoc(m, msg, loc);
	}	
}










