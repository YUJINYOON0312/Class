package abstraction;

//추상메서드가 메서드가 포함된 클래스는 무조건 추상클래스
//class는 완성된 코드만 가능함
public abstract class Trip {//미완성 클래스: 인스턴스화 불가능
	
	String des;
	public Trip(String des) {
		this.des=des;
	}
	void go() {
		System.out.println(des+"로 여행을 갑시다.");
		course();
	}
	 //{}를 제거
	//abstract 메서드 : 추상메서드:미완성된 메서드
	abstract void course();

	
	//추상클래스

}
