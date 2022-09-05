package arrays;

public class Array2Test03 {

	public static void main(String[] args) {
		//int r=2,c=3;
		int[][] ar=new int[10][5];
		
//		ar[0][0]=1;
//		ar[0][1]=2;
//		ar[0][2]=3;
		int c=0;
		for(int i=0; i<ar.length ; i++){
			for(int j=0; j<ar[i].length; j++) {
				ar[i][j]=++c;
			}
		}
		/*
		for(int i=0; i<ar.length ; i++){
			for(int j=0; j<ar[i].length; j++) {
				ar[i][j]=j+1+i*ar[i].length;
			}
		}
		*/
		
//		ar[1][0]=4;
//		ar[1][1]=5;
//		ar[1][2]=6;
		
		//출력문장
		int rows=ar.length;
		for(int i=0; i<rows ; i++) {
			int columns=ar[i].length;
			for(int j=0; j<columns ; j++) {
				System.out.printf("%2d ", ar[i][j]);
			}
			System.out.println();
		}
		
		

	}

}
