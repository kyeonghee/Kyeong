package com.tis.mapper;

import java.util.List;

import com.tis.vo.BookVO;

public interface AdminMapper {

	// �������
	int insertBook(BookVO book);

	// ���������������
	public List<BookVO> bookList();
	
	// �����󼼺���
	public List<BookVO> bookInfo(int bookNum);
}
