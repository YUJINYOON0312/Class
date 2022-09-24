package com.nowon.set;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class HashSetTest {

	public static void main(String[] args) {
		
		//중복불가
		Set<Integer> set=new HashSet<>();
		set.add(1);//list다르게 인덱스가 존재하지 않음
		set.add(2);//list다르게 인덱스가 존재하지 않음
		set.add(10);//list다르게 인덱스가 존재하지 않음
		set.add(null);//null 허용
		System.out.println(set.size());
		set.add(null);//이미 존재하면 저장하지 않음
		set.add(10);
		System.out.println(set.size());
		set.remove(10);//삭제
		System.out.println(set.size());
		System.out.println();
		//수정, 읽기가 안됨
		for(Integer e:set) {
			System.out.println(e);
		}
		
		//Iterator객체를 이용해서 읽기가능
		Iterator<Integer> it=set.iterator();
		while(it.hasNext()) {//set 데이터가 존재하면 true, 없으면 false
			Integer n=it.next();
			System.out.println(n);
		}
		
		
		
	}

}
