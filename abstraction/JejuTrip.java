package abstraction;

public class JejuTrip extends Trip{

	public JejuTrip(String des) {
		super(des);
	}

	//@Override
	void course() {
		System.out.println(des+"여행 코스입니다.");
		System.out.println("1. 한라산 등반예정입니다.");
		System.out.println("2. 만장굴 탐험...");
		System.out.println("3. 성산일출봉 올라가기");
		System.out.println("4. 남방돌고래 보러가기");
	}
	
	
	
	

}
