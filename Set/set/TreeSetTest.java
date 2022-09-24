package com.nowon.set;

import java.util.Random;
import java.util.TreeSet;

public class TreeSetTest {

	public static void main(String[] args) {
		
		
		//TreeSet 은 오름차순정렬
		//순서,계층적관련(노드) 메서드가 존재
		Random ran=new Random();
		//for(int i=0; i<5; i++) {
			TreeSet<Integer> set=new TreeSet<>();
			while(set.size()<6)set.add(ran.nextInt(45)+1);
			
			for(int num:set) {
				System.out.printf("%02d ", num);
			}
			System.out.println();
			
			System.out.println(set.first());
			System.out.println(set.last());
			
		//}
		TreeSet<Integer> set2=new TreeSet<>();
		set2.add(10);
		set2.add(5);
		set2.add(7);
		set2.add(11);
		set2.add(4);
		set2.add(15);
		for(int num:set2) {
			System.out.printf("%02d ", num);
		}
		System.out.println();
		System.out.println(set2.floor(9));
		System.out.println(set2.lower(10));
		int n=set2.pollLast();
		System.out.println("pollLast: "+n);
		for(int num:set2) {
			System.out.printf("%02d ", num);
		}
		System.out.println();
		
		n=set2.pollFirst();
		System.out.println("pollFirst: "+n);
		for(int num:set2) {
			System.out.printf("%02d ", num);
		}
		System.out.println();
		
			

	}

}
