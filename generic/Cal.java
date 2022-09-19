package com.nowon.generic;

//타입파라미터 : 데이터타입대신 T

public class Cal<T> {
	
	T a;
	T b;
	
	public Cal(T a, T b) {
		this.a=a;
		this.b=b;
	}
	
	void disp() {
		System.out.println(a);
		System.out.println(b);
	}
	
}
