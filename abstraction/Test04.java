package abstraction;

import java.util.Scanner;

public class Test04 {

	public static void main(String[] args) {
		
		//Trip trip=new Trip();
		//추상클래스는 단독으로 객체생성 불가능
		//다른클래스에 상속후 오버라이드({}를 구현)후 자식클래스로 인스턴스화
		Trip trip=null;
		Scanner in=new Scanner(System.in);
		System.out.println("1.제주  2.강릉");
		System.out.print("선택 : ");
		switch(in.nextInt()) {
		case 1:
			trip=new JejuTrip("제주");
			break;
		case 2:
			trip=new KangneungTrip("강릉");
	
		}
		in.close();
		trip.go();

	}

}
