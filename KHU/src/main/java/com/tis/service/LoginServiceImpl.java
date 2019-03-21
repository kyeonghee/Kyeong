package com.tis.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tis.common.CommonUtil;
import com.tis.mapper.LoginMapper;
import com.tis.vo.AdminVO;
import com.tis.vo.NotUserException;
import com.tis.vo.UserVO;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Inject
	private LoginMapper Lmapper;
	@Override
	public UserVO LoginCheck(String studentNum, String studentPwd) throws NotUserException {
		UserVO user = new UserVO();
		user.setStudentNum(studentNum);
		user.setStudentPwd(studentPwd);
		UserVO dbUser = findUser(user);
		if(dbUser!=null) {
			if(!dbUser.getStudentPwd().equals(studentPwd)) {
				throw new NotUserException("비밀번호가 일치하지 않습니다");
			}
		}
		return dbUser;
	} 

	@Override
	public UserVO findUser(UserVO findUser) throws NotUserException {
		UserVO user=Lmapper.findUser(findUser);
		if(user==null)
			throw new NotUserException("존재하지 않는 아이디 입니다");
		return user;
	}

	@Override
	public AdminVO adminCheck(String adminID, String adminPwd) throws NotUserException {
		AdminVO admin = new AdminVO();
		admin.setAdminID(adminID);
		admin.setAdminPwd(adminPwd);
		AdminVO dbadmin = findAdmin(admin);
		if(dbadmin!=null) {
			if(!dbadmin.getAdminPwd().equals(adminPwd)) {
				throw new NotUserException("비밀번호가 일치하지 않습니다");
			}
		}
		return dbadmin;
	}

	@Override
	public AdminVO findAdmin(AdminVO findAdmin) throws NotUserException {
		AdminVO admin = Lmapper.findAdmin(findAdmin);
		if(admin==null)
			throw new NotUserException("존재하지 않는 관리자 입니다");
		return admin;
	}


}






