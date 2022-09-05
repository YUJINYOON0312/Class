package arrays;

public class Array2Test07 {

	public static void main(String[] args) {
		
		int n=3, data=1;
		int t=n*2-1;//5
		int[][] ar=new int[n][n];
		for(int i=0; i<t; i++) {
			int col;
			if(i<n) {//0,1,2,3
				col=i;
				for(int j=0; j<=i; j++) {
					ar[j][col--]=data++;
				}
			}else {//i: 4, 5, 6:
				col=n-1;
				for(int j=i-(n-1); j<n; j++) {
					ar[j][col--]=data++;
				}
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
