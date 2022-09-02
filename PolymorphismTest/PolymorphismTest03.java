package PolymorphismTest;

class A{
	void print() {
		System.out.println("aaa");
	}
}

class B extends A{

	@Override
	void print() {
		System.out.println("B가 재정의를 한 메서드 입니다.");
	}
	
class C extends A{

	@Override
	void print() {
		System.out.println("C가 재정의를 한 메서드 입니다.");
	
	
	}
}

public class PolymorphismTest03 {

	public static void main(String[] args) {

		A a=new B();
		a.print();
		
		
		}
	}

}

