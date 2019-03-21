package com.tis.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class AdminVO implements Serializable {
	
	private int adminNum;
	private String adminName;
	private String adminID;
	private String adminPwd;
	private String studentID;
	private String href;
}
