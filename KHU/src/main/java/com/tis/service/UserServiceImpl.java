package com.tis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tis.mapper.UserMapper;
import com.tis.vo.RentalVO;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	UserMapper uMapper;

	@Override
	public int insertRental(RentalVO rental) {
		return uMapper.insertRental(rental);
	}

	@Override
	public List<RentalVO> rentalList(String studentNum) {
		return uMapper.rentalList(studentNum);
	}

	@Override
	public int updateRental1(int bookNum) {
		return uMapper.updateRental1(bookNum);
	}
	
	@Override
	public int updateRental2(int bookNum) {
		return uMapper.updateRental2(bookNum);
	}
	
	@Override
	public int DeleteRental(RentalVO rental) {
		return uMapper.DeleteRental(rental);
	}

	@Override
	public Integer isRental(RentalVO rental) {	
		return uMapper.isRental(rental);
	}

}
