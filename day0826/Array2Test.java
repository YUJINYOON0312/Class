package arrays;

import java.util.Arrays;

public class Array2Test {

	public static void main(String[] args) {
		//행렬구조
		int[][] arr1=new int[2][3];//int형 6개
		//2차원배열은 1차원배열의 집합
		int[][] arr2= {
				{1,2,3},//arr2[0]: arr2[0][0], arr2[0][1], arr2[0][2]
				{4,5,6} //arr2[1]: arr2[1][0], arr2[1][1], arr2[1][2]
				};
		int[][] arr3= new int[][]{
				{1,2,3},
				{4,5,6},
				{7,8,9}
				};
		//1차원배열변수이름을 만들어줍니다.
		//arr2[0] : arr2[0][0], arr2[0][1], arr2[0][2]
		//arr2[1]
		//int[] ar1= {1,2,3};
				
		System.out.println(arr2.length);//1차원배열의 개수
		System.out.println(Arrays.toString(arr2));
		System.out.println(Arrays.toString(arr2[0]));
		System.out.println("arr2[0] length:"+arr2[0].length);
		System.out.println("arr2[0][0] : "+arr2[0][0]);
		System.out.println("arr2[0][1] : "+arr2[0][1]);
		System.out.println("arr2[0][2] : "+arr2[0][2]);
		System.out.println();
		System.out.println("arr2[1] length:"+arr2[1].length);
		System.out.println("arr2[1][0] : "+arr2[1][0]);
		System.out.println("arr2[1][1] : "+arr2[1][1]);
		System.out.println("arr2[1][2] : "+arr2[1][2]);
		
		//System.out.println(arr3.length);//1차원배열의 개수	
		

	}

}
