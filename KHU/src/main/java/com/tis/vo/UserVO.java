package com.tis.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class UserVO implements Serializable {
	
	private String studentNum;			//�й�
	private String studentName;			//�̸�
	private String studentPwd;			//���
	private String studentBirth;		//�������
	private String studentPhone;		//����ó
	private String zipcode;				//�����ȣ
	private String address1;			//�ּ�1
	private String address2;			//�ּ�2
	private String studentCondition;	//���� ����
	private String majorNum;			//�й�
	
	private String href;
}
