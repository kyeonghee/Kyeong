package com.tis.service;

import java.util.List;

import com.tis.vo.BookVO;
import com.tis.vo.PagingVO;


public interface PagingService {

	// �Խø�� ��������
	List<BookVO> selectBookAllpaging(PagingVO paging);
	
	//�˻� ��� ��������
	List<BookVO> findBook(PagingVO paging);
	
	int getTotalCount(); //�� �Խñۼ� ��������
	int getTotalCountPaging(PagingVO paging); // �˻��� �� �Խñۼ� ��������
}