package com.nowon.generic;

public class ObjectTest {

	public static void main(String[] args) {
		
		Box box=new Box();
		box.setObject("문자열");
		String str=(String) box.getObj();
		System.out.println(str+"수정가능");
		
		box.setObject(2.5);
		double r=(double) box.getObj();
		
		System.out.println(2*r*Math.PI);
		
		box.setObject(100);
		int side=(int) box.getObj();
		System.out.println(side*side);
		
		box.setObject(new Apple());
		Apple apple=(Apple) box.getObj();
		System.out.println(apple);

	}

}
