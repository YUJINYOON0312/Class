package PolymorphismTest;

//추상클래스 : 미완성클래스: 단독으로 인스턴스화 할 수 없음
public abstract class Cooking {
	//{}가 없는 메서드는 abstract 키워드를 적용
	//추상 메서드 : 미완성 메서드
	abstract void run() ; 

}

//추상클래스는 추상메서드를 포함 할 수 있다. 필수는 아님
//추상메서드가 존재하면 무조건 추상클래스로 정의 해야한다.
