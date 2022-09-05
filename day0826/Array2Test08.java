package arrays;

public class Array2Test08 {

	public static void main(String[] args) {
		
		int n=5, data=1;
		int t=n*2-1;//7
		int[][] ar=new int[n][n];
		for(int i=0; i<t; i++) {
			if(i<n) {//i:0,1,2,3
				for(int j=0; j<i+1; j++) {
					ar[i-j][j]=data++;
				}
			}else {//i:4,5,6
				for(int j=0; j<t-i; j++) {
					ar[n-1-j][i-(n-1)+j]=data++;
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
