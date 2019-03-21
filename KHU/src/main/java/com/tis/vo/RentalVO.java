package com.tis.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class RentalVO implements Serializable {

	private int bookNum; // 도서번호
	private int rentalNum; // 대여번호
	private Date rentalDate; // 대여날짜
	private Date returnDate; // 반납일
	private String studentNum; // 학번
	
	private List<BookVO> bookList;
}
