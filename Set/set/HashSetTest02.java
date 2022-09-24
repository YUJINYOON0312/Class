package com.nowon.set;

import java.util.HashSet;
import java.util.Set;

public class HashSetTest02 {

	public static void main(String[] args) {
		
		HashSet<String> set1=new HashSet<>();
		String str1="aaa";
		set1.add(str1);
		set1.add(str1);
		String str2=new String("aaa");
		set1.add(str2);
		
		System.out.println(set1.size());
		
		System.out.println(str1==str2);

	}

}
