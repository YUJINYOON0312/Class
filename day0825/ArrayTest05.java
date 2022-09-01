package arrays;

import java.util.Arrays;

public class ArrayTest05 {

	public static void main(String[] args) {
		
		
		int[] arr = {1,2,3,4,5,10,20,30,40,66,22};
		
		for(int i = 0 ; i<arr.length ; i++) {
			
			System.out.print(arr[i]);
			System.out.println();
			
			if(arr[i]==22) {
				
				System.out.println();
				System.out.println(i+1 + "번째");
			}
			
		}
		
		//오름차순 정렬하기: 버블정렬
		
		for(int i = 0 ; i<arr.length ; i++) {
			for(int j=0; j<arr.length-1; j++) {
				
				if(arr[j] > arr[j+1]) {
					int temp = arr[j];
					arr[j] = arr[j+1];
					arr[j+1] = temp;	
				}//1
			
			}
		}
			System.out.println(Arrays.toString(arr));
		
		

	}

}
