package arrays;

public class Array2Test10 {

	public static void main(String[] args) {
		
		int[][] arr= {
				{1,2},//0
				{3,4,5},//1
				{6,7,8,9}//2
		};
		System.out.println(arr.length);//1차원배열개수 : 3
		System.out.println(arr[2].length);
		
		
		int max;
		int min;
		int[] ar= {25,4,5,30,7,6,11,60,100};
		//////////////////////////////
		min=max=ar[0];
		for(int i=1; i<ar.length; i++) {
			
			if(max < ar[i]) max=ar[i];
			if(min > ar[i]) min=ar[i];
		}
		//////////////////////////////
		System.out.println("max : "+max);
		System.out.println("min : "+min);

	}

}
