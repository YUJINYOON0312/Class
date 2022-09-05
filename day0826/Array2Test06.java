package arrays;

public class Array2Test06 {

	public static void main(String[] args) {
		
		int n=4, data=1;
		int[][] ar=new int[n][n];
		for(int i=n-1; i>=0; i--) {//고정
			for(int j=n-1; j>=0; j--) {//변화
				ar[j][i]=data++;
			}
		}
		
		
		
		////////////////////////////////////////////////
		//출력
		int r=ar.length;
		for(int i=0; i<r; i++) {
			//1차원
			int c=ar[i].length;
			for(int j=0; j<c; j++) {
				System.out.printf("%2d ", ar[i][j]);
			}
			System.out.println();
		}

	}

}
