package arrays;

public class Array2Test04 {

	public static void main(String[] args) {
		
		int n=5, data=1;
		int[][] ar=new int[n][n];
		for(int i=0; i<n; i++) {
			for(int j=0; j<n; j++) {
				ar[i][j]=data++;
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
