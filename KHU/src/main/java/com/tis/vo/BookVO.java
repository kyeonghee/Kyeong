package com.tis.vo;

import java.io.Serializable;
import java.sql.Date;

import lombok.Data;

@Data
public class BookVO implements Serializable {
	
	private int bookNum;		//������ȣ
	private String bookName;	//������
	private String author;		//����
	private String publisher;	//���ǻ�
	private String publishDate;	//���ǳ�¥
	private String bookImage; 	//�̹���
	private String bookCheck;	//�뿩����
	
}
