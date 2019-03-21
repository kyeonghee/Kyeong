package com.tis.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class UserVO implements Serializable {
	
	private String studentNum;			//학번
	private String studentName;			//이름
	private String studentPwd;			//비번
	private String studentBirth;		//생년월일
	private String studentPhone;		//연락처
	private String zipcode;				//우편번호
	private String address1;			//주소1
	private String address2;			//주소2
	private String studentCondition;	//학적 상태
	private String majorNum;			//학번
	
	private String href;
}
