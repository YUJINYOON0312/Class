package PolymorphismTest;

class AAA{
	int a=10;
	String name="부모";
	public AAA() {}
	public AAA(String name) {
		this.name=name;
	}
}
class BBB extends AAA{
	int a=100;
	int b=200;
	String name="자식";
}
class CCC extends AAA{
	//int a=100
	//String name="자식";
	int c=200;
	public  CCC(String name) {
		super(name);
		
	}
}

public class PolymorphismTest {
	public static void main(String[] args) {
		
		AAA ab=new BBB();
		System.out.println(ab.a); //10 ,부모클래스 AAA에서 접근
		System.out.println(ab.name); //부모
		//System.out.println(ab.b); //자식객체의 멤버는 불가능
		
		//부모필드이름과 동일한 필드이름 사용가능: 서로 구분됨
		BBB bb=new BBB();
		System.out.println(bb.a); //100
		System.out.println(bb.name);  //자식
		System.out.println(bb.b);
		
		CCC cc=new CCC("CCC자식");
		System.out.println(cc.a); //부모객체의 멤버
		System.out.println(cc.name);  //부모객체의 멤버
		System.out.println(cc.c);
		
	}
}
