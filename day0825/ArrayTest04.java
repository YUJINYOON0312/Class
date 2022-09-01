package arrays;

import java.util.Scanner;

public class ArrayTest04 {

	public static void main(String[] args) {
	
		String[] name= {"조인성", "이광수", "차태현", "조재청", "강동원"};
		int n=name.length;
		int[] com= new int[n];
		int tot = 0;
		
		//점수는 키보드로 입력 받음
		Scanner sc = new Scanner(System.in);
		
		for(int i=0; i<n; i++) {
			System.out.print(name[i]+" 점수 : ");
			com[i]=sc.nextInt();
			tot += com[i]; //총점누적
		}
		 
		 System.out.println((double)tot/n);
		 

		sc.close();

	}

}
