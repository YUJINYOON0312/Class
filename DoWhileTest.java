package day0824;

import java.util.Scanner;

public class DoWhileTest {

	public static void main(String[] args) {

		int dan=2;
		int i;
		do{
			System.out.println("---"+dan+"단---");
			i=1;
			do {
				System.out.println(dan+" * "+i+" = "+dan*i);
				i++;
			}while(i<=9);
			dan++;
		}while(dan<=9);
		
	}

} //구구단 2-9 단 출력
