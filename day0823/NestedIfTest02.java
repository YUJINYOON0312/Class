import java.util.Random;

public class NestedIfTest02 {
	
	public static void main(String[] args) {
		
		//정수의 나머지가 0: 가위, 1:바위, 2: 보 
		
		int num=0;
		Random ran=new Random();
		num = ran.nextInt();
		if(num%3 == 0) {
			System.out.println("가위");
		}else if(num%3==1) { 
			System.out.println("바위");
		}else { 
			System.out.println("보");
		}
		
	}

}
