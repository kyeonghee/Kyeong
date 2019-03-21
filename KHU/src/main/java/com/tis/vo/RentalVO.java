package com.tis.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class RentalVO implements Serializable {

	private int bookNum; // ������ȣ
	private int rentalNum; // �뿩��ȣ
	private Date rentalDate; // �뿩��¥
	private Date returnDate; // �ݳ���
	private String studentNum; // �й�
	
	private List<BookVO> bookList;
}
