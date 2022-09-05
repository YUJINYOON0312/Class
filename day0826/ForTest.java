package arrays;

public class ForTest {

	public static void main(String[] args) {
		
		int t=4;
		for(int i=0; i<t; i++) {//행개수

			for(int j=0; j<t-1-i; j++) {//공백
				System.out.print(" ");
			}
			for(int j=0; j<=i; j++) {//열개수
				System.out.print("$ ");
			}
			System.out.println();
		}
//		   $ 
//		  $ $ 
//		 $ $ $ 
//		$ $ $ $

	}

}
