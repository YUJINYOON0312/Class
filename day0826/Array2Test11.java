package arrays;

public class Array2Test11 {

	public static void main(String[] args) {
		int ar[][]= {
				{95,86},
				{83,92,96},
				{78,83,93,87,88}
		};
		int sum=0;//총합계
		double avg=0.0;//평균
		int c=0;
		///합계 평균 계산식
		for(int i=0; i<ar.length; i++) {
			for(int j=0; j<ar[i].length ; j++,c++) {
				sum += ar[i][j];
			}
		}//
		avg = (double)sum/c;
		
		System.out.println("총합계 : "+sum);
		System.out.println("평균 : "+avg);
		
		

	}

}
