package arrays;

public class ArrayTest03 {

	public static void main(String[] args) {
	
		
		int[] scores = {90, 70, 100, 95};
		int tot=0; // 지역변수 초기화
		double sum = 0;
		
		
		for(int i=0; i<scores.length; i++ ) {
			
			//tot= tot + scores[i];
			tot += scores[i];
		}
		
		sum = (double)tot/scores.length;
		
		System.out.println("총점 : "+tot); //{90, 70, 100, 95} 합계
		System.out.println("평균 : "+sum); //{90, 70, 100, 95} 평균

	}

}
