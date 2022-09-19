package com.nowon.generic;

public class GenericTest {

	public static void main(String[] args) {
		//<> 무조건 클래스타입만 허용
		//기본형 데이터타입 불가
		Cal<Integer> cal=new Cal<Integer>(10, 30);
		cal.disp();
		
		Cal<Double> cal2=new Cal<Double>(3.2, 2.2);
		cal2.disp();
		
		Cal<String> cal3=new Cal<String>("문자열", "다가능");
		cal3.disp();
		
		Calcu c1=new Calcu(10, 20);
		c1.disp();
		
		Calcu c2=new Calcu(3.2, 2.2);
		c2.disp();
	}

}
