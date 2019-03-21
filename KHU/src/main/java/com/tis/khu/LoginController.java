package com.tis.khu;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.tis.common.CommonUtil;
import com.tis.service.LoginService;
import com.tis.vo.AdminVO;
import com.tis.vo.NotUserException;
import com.tis.vo.UserVO;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class LoginController {

	@Inject
	private LoginService Lservice;

	@Inject
	private CommonUtil util;

	@PostMapping("/Book/BookLogin")
	public String BookLogin(Model m, HttpSession ses, @ModelAttribute("user") UserVO user) throws NotUserException {
		/*log.info("user:" + user);
		log.info("href=="+user.getHref());*/
		if (user.getStudentNum() == null || user.getStudentPwd() == null || user.getStudentPwd().trim().isEmpty()) {
			return "/uniM";
		}
		
		
		// �α��� ����ó��
		UserVO loginUser = Lservice.LoginCheck(user.getStudentNum(), user.getStudentPwd());
		String msg = "", loc = "";
		if (loginUser != null) {
			ses.setAttribute("loginUser", loginUser);
			ses.setAttribute("returPage", user.getHref());
			msg = loginUser.getStudentName() + "�� ȯ���մϴ�";
			loc = user.getHref();
		}
		return util.addMsgLoc(m, msg, loc);
	}
	
	@PostMapping("/Dorm/DormLogin")
	public String DormLogin(Model m, HttpSession ses, @ModelAttribute("user") UserVO user) throws NotUserException {
		/*log.info("user:" + user);
		log.info("href=="+user.getHref());*/
		if (user.getStudentNum() == null || user.getStudentPwd() == null || user.getStudentPwd().trim().isEmpty()) {
			return "/uniM";
		}
		
		
		// �α��� ����ó��
		UserVO loginUser = Lservice.LoginCheck(user.getStudentNum(), user.getStudentPwd());
		String msg = "", loc = "";
		if (loginUser != null) {
			ses.setAttribute("loginUser", loginUser);
			msg = loginUser.getStudentName() + "�� ȯ���մϴ�";
			loc = "../user/Dorm/DormM";
		}
		return util.addMsgLoc(m, msg, loc);
	}
	
	@PostMapping("/admin/Admin/adminLogin")
	public String AdminLogin(Model m,HttpSession ses, @ModelAttribute("admin") AdminVO admin) throws NotUserException {
		log.info("admin======="+admin);
		if(admin.getAdminID()==null || admin.getAdminPwd()==null || admin.getAdminID().trim().isEmpty()) {
			return "/Admin/AdminPage";
		}
		
		//������ �α��� ����ó��
		AdminVO adminUser = Lservice.adminCheck(admin.getAdminID(), admin.getAdminPwd());
			String msg = "", loc = "";
			if(admin.getAdminID().equals("admin")) {
				ses.setAttribute("adminUser", adminUser);
				ses.setAttribute("returnPage", admin.getHref());
				msg = adminUser.getAdminID() + "�� ȯ���մϴ�";
				loc = "../../Admin/AdminPage";
				System.out.println("loc===="+loc);
			}
			
			return util.addMsgLoc(m, msg, loc);
		}
	
	
	
	//������ �α׾ƿ�
	@GetMapping("/Logout")
	public String Logout(HttpSession ses) {
		ses.invalidate();
		
		return "redirect:/Book/BookM";
	}
	
	//���� �α׾ƿ�
	@GetMapping("/MLogout")
	public String MLogout(HttpSession ses) {
		ses.invalidate();
		
		return "redirect:/uniM";
	}
	
	//������ �α׾ƿ�
	@GetMapping("/ALogout")
	public String ALogout(HttpSession ses) {
		ses.invalidate();
		
		return "redirect:/index";
	}
	
	
}
