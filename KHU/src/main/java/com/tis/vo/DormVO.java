package com.tis.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class DormVO implements Serializable {
	
	private int DormNum;			//��û��ȣ
	private String studentNum;		//�й�
	private String studentName;		//�̸�
	private String majorName;		//�а�
}
