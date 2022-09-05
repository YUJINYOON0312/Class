package arrays;

public class Array2Test05 {

	public static void main(String[] args) {
		
		int n=4; 
		int data=1;
		int[][] ar=new int[n][n];
		for(int i=0; i<n; i++) {
			
			if(i%2==0) {
				//증가패턴 : i :0 or 2
				for(int j=0; j<n; j++) {
					ar[i][j]=data++;
				}
			}else {
				//감소패턴 i = 1 3
				for(int j=n-1; j>=0; j--) {
					ar[i][j]=data++;
				}
			}
			//
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
