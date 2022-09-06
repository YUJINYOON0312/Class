package abstraction;

public class KangneungTrip extends Trip{

	public KangneungTrip(String des) {
		super(des);
	}

	//@Override
	void course() {
		System.out.println(des+"여행 코스입니다.");
		System.out.println("1. 강릉커피거리가서 커피마셔요");
		System.out.println("2. 짬뽕순두부가 유명해요");
		System.out.println("3. 경포대 해수욕장에 들러요");
	}
	
	

}
