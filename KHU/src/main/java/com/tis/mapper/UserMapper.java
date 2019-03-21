package com.tis.mapper;

import java.util.List;

import com.tis.vo.RentalVO;

public interface UserMapper {

	int insertRental(RentalVO rental);	//대여
	
	public List<RentalVO> rentalList(String studentNum);	//대여정보
	
	int updateRental1(int bookNum);	//대여상태 변환
	
	int updateRental2(int bookNum);	//대여상태 변환
	
	int DeleteRental(RentalVO rental);	//대여정보 삭제

	Integer isRental(RentalVO rental);
	
}
