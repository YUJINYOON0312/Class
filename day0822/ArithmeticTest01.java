package arithmetic;

public class ArithmeticTest01 {//camel
	
	public static void main(String[] args) {
		int a=10, b=20;
		
		System.out.printf("a + b = %d\n", a+b);
		System.out.printf("a - b = %d\n", a-b);
		System.out.printf("a * b = %d\n", a*b);
		//나눗셈 주의 정수형 정수형 연산시 결과는 정수형
		//정수/정수 나눗셈 연산시 몫에 해당하는 수치
		System.out.printf("a / b = %d\n", a/b);
		//System.out.printf("a / b = %f\n", (double)a/b);
		//System.out.printf("a / b = %f\n", (double)(a/b));
		
		//정수/정수 나눗셈 연산시 나머지에 해당하는 수치
		System.out.printf("a %% b = %d\n", a%b);
		a++;//1증가
		//a = a + 1;
		//a += 1;
		System.out.println("a : "+a);
		b--;//1감소
		System.out.println("b : "+b);
		
	}

}
