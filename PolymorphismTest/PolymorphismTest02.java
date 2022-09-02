package PolymorphismTest;

class AA{
	//메서드
	void disp() {System.out.println("AA의 메서드입니다.");
	}
}

class BB extends AA{
	void display() {
		System.out.println("BB의 메서드입니다.");
	}
}

class CC extends AA{
	
	@Override
	void disp() {
		System.out.println("CC의 메서드입니다.");
	}
}

public class PolymorphismTest02 {

	public static void main(String[] args) {

		BB bb=new BB();
		bb.disp(); //AA의 메서드 사용가능
		bb.display();
		
		AA ab=new BB();
		ab.disp();
		//ab.display(); // super 객체명으로 접근시 자식멤버 불가
		
		CC cc=new CC();
		cc.disp();
		AA ac=new CC();
		ac.disp();
		//부모의 메서드이름() 과 자식의 메서드이름() 이 동일하면 구분하지 않는다
		//자식의 메서드는 부모의 메서드를 Override 표현임
		//메서드 Override 와 Overloading 구분
	}

}
