package arrays;

public class ArrayTest02 {

	public static void main(String[] args) {
		
		int[] exam = new int[4];
		
		System.out.println("배열의 사이즈 : " + exam.length);
		
		
		for(int i=0; i<exam.length; i++) {
			
			exam[i]=i+1;
			
		}
	
		for(int i=0; i<exam.length; i++) {
			
			System.out.println(exam[i]);
			
		}
		
		
	}

}
