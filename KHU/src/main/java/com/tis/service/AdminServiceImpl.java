package com.tis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tis.mapper.AdminMapper;
import com.tis.vo.BookVO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Inject
	private AdminMapper adminMapper;
	
	@Override
	public int insertBook(BookVO book) {
		return adminMapper.insertBook(book);
	}

	@Override
	public List<BookVO> bookList() {
		return adminMapper.bookList();
	}

	@Override
	public List<BookVO> bookInfo(int bookNum) {
		return adminMapper.bookInfo(bookNum);
	}
	
	

	

}
