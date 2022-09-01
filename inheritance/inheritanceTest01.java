package inheritance;

interface A{}
interface B{}
interface C extends A,B{}


class Super02{}
class Super01{
	protected int a;
}
class Sub01 extends Super01{ //클래스대 클래스 상속은 단일 상속
	int b;
}
class Sub02 extends Sub01{
	int c;
}
class Sub03 extends Super01{ 
	int d;
}

public class inheritanceTest01 {

	public static void main(String[] args) {
		
		Sub01 sub=new Sub01();
		System.out.println(sub.b);
		System.out.println(sub.a);
	}

}

