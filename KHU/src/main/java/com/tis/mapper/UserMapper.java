package com.tis.mapper;

import java.util.List;

import com.tis.vo.RentalVO;

public interface UserMapper {

	int insertRental(RentalVO rental);	//�뿩
	
	public List<RentalVO> rentalList(String studentNum);	//�뿩����
	
	int updateRental1(int bookNum);	//�뿩���� ��ȯ
	
	int updateRental2(int bookNum);	//�뿩���� ��ȯ
	
	int DeleteRental(RentalVO rental);	//�뿩���� ����

	Integer isRental(RentalVO rental);
	
}
