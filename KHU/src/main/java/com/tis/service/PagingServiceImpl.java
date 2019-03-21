package com.tis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tis.mapper.PagingMapper;
import com.tis.vo.BookVO;
import com.tis.vo.PagingVO;

@Service
public class PagingServiceImpl implements PagingService {

	@Inject
	private PagingMapper pagingMapper;
	
	@Override
	public List<BookVO> selectBookAllpaging(PagingVO paging) {
		return pagingMapper.selectBookAllpaging(paging);
	}

	@Override
	public List<BookVO> findBook(PagingVO paging) {
		return null;
	}

	@Override
	public int getTotalCount() {
		return pagingMapper.getTotalCount();
	}

	@Override
	public int getTotalCountPaging(PagingVO paging) {
		return pagingMapper.getTotalCountPaging(paging);
	}

}
