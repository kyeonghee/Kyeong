package com.tis.vo;

import java.io.Serializable;
import java.sql.Date;

import lombok.Data;

@Data
public class BookVO implements Serializable {
	
	private int bookNum;		//도서번호
	private String bookName;	//도서명
	private String author;		//저자
	private String publisher;	//출판사
	private String publishDate;	//출판날짜
	private String bookImage; 	//이미지
	private String bookCheck;	//대여상태
	
}
