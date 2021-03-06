package com.tis.mapper;

import com.tis.vo.AdminVO;
import com.tis.vo.NotUserException;
import com.tis.vo.UserVO;

public interface LoginMapper {
	
	UserVO LoginCheck(String studentNum, String studentPwd) throws NotUserException;
	
	UserVO findUser(UserVO findUser) throws NotUserException;
	
	AdminVO adminCheck(String adminID, String adminPwd) throws NotUserException;
	
	AdminVO findAdmin(AdminVO findAdmin) throws NotUserException;
}
