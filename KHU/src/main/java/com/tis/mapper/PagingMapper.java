package com.tis.mapper;

import java.util.List;

import com.tis.vo.BookVO;
import com.tis.vo.PagingVO;

public interface PagingMapper {
	// 게시목록 가져오기
	List<BookVO> selectBookAllpaging(PagingVO paging);
	
	//검색 목록 가져오기
	List<BookVO> findBook(PagingVO paging);
	
	int getTotalCount(); //총 게시글수 가져오기
	int getTotalCountPaging(PagingVO paging); // 검색한 총 게시글수 가져오기
}
