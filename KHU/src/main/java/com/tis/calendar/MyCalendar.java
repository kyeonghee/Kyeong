package com.tis.calendar;

public class MyCalendar {

//	년도를 넘겨받아 윤년/평년을 판단해 윤년은 true, 평년은 false를 리턴하는 메소드
	public static boolean isYoun(int year){
		
		return year%4 == 0 && year%100 != 0 || year%400 == 0;
	}
//	년, 월을 넘겨받아 그 달의 마지막 날짜를 리턴하는 메소드
	public static int lastDay(int year, int month){
		int m[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};	
		m[1] = isYoun(year) ? 29 : 28;
		return m[month - 1];
	}
	// 년, 월, 일을 넘겨받아 1년 1월 1일부터 지나온 날수의 합계를 구해 리턴하는 메소드
	public static int totalDay(int year, int month, int day){
		int sum = (year-1) * 365 + (year-1) / 4 - (year-1) / 100 + (year-1) / 400;	// 4년에한번 윤년, 100년에한번 평년, 400년에한번 윤년
		for(int i=1 ; i<month ; i++) {
			sum += lastDay(year, i);		
		}
		return sum + day;
	}
	// 년, 월, 일을 넘겨받아 넘겨받은 날짜의 요일을 숫자로 리턴하는 메소드
	// 일요일(0), 월요일(1), 화요일(2), 수요일(3), 목요일(4), 금요일(5), 토요일(6)
	public static int weekDay(int year, int month, int day){
		return totalDay(year, month, day) % 7;
		
		
	}
	
	
	
}
