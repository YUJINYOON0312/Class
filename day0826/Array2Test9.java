package arrays;

public class Array2Test9 {

	public static void main(String[] args) {
		// 1차원배열, 다차원 배열(2차원이상의 배열)
		
		//배열은 무엇인가?
		//동일한 데이터타입의 집합구조
		
		//데이터타입[] 변수이름
		int[] ar1;int ar2[]= {1,2,3};
		ar1=new int[3];
		//ar1[0], ar1[1], ar1[2]
		//배열이름[인덱스번호]
		for(int i=0; i < ar1.length; i++) {
			System.out.println(ar1[i]);
		}
		
		//2차원 배열 : 1차원의 집합
		int[] arr1= {1,2,3};
		int[] arr2= {4,5,6};
		int[][] arr22= {arr1,arr2};
		
		int[][] arr23= {{10,11,12},{21,22,23},{31,32,33}};
		System.out.println(arr23.length);
		//arr23[0], arr23[1], arr23[2]
		
		System.out.println(arr23[0][0]);//10
		System.out.println(arr23[0][1]);//11
		System.out.println(arr23[0][2]);//12
		
		int[][] arr33= new int[2][3];
		System.out.println(arr33.length);//구성요소의 개수
		
		int[][] arr44=new int[2][];
		arr44[0]=new int[5];
		System.out.println(arr44[0].length);
		
		arr44[1]=new int[10];
		System.out.println(arr44[1].length);
		
		for(int i=0; i<arr23.length; i++) {
			System.out.println(i+":"+arr23[i].length);
			for(int j=0; j<arr23[i].length; j++) {
				System.out.print(arr23[i][j]+" ");
			}
			System.out.println();
			
		}
		

	}

}
