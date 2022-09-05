import java.util.Scanner;

public class IfTest01 {

	public static void main(String[] args) {
		//변수를 선언하면 지역변수
		int num;
		Scanner scanner=new Scanner(System.in);
		System.out.print("숫자입력 : ");
		num=scanner.nextInt();
		
		
		if ( num%2 == 0 ) {
			// 조건문이 true일떄 실행되는 영역
			System.out.println(num+"은 짝수!");
		}//조건이 false인경우
		
		if ( num%2 == 1 ) {
			// 조건문이 true일떄 실행되는 영역
			System.out.println(num+"은 홀수!");
		}//조건이 false인경우
		
		
		System.out.println("프로그램 종료");
	}

}
