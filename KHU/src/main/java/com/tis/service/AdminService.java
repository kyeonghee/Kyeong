package com.tis.service;

import java.util.List;

import com.tis.vo.BookVO;

public interface AdminService {

	// �������
	int insertBook(BookVO book);

	// ���������������
	public List<BookVO> bookList();

	// �����󼼺���
	public List<BookVO> bookInfo(int bookNum);
}
