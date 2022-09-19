package com.nowon.generic;

public class Calcu {
	//모든데이터타입의 변수로 사용가능
	//모든클래스의 최상위 타입
	Object a;
	Object b;
	
	public Calcu(Object a, Object b) {
		this.a=a;
		this.b=b;
	}
	
	void disp() {
		System.out.println(a);
		System.out.println(b);
	}

}
