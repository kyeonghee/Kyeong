package com.tis.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class DormVO implements Serializable {
	
	private int DormNum;			//신청번호
	private String studentNum;		//학번
	private String studentName;		//이름
	private String majorName;		//학과
}
