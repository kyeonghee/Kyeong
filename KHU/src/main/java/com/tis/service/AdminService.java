package com.tis.service;

import java.util.List;

import com.tis.vo.BookVO;

public interface AdminService {

	// 도서등록
	int insertBook(BookVO book);

	// 도서등록정보보기
	public List<BookVO> bookList();

	// 도서상세보기
	public List<BookVO> bookInfo(int bookNum);
}
