package day0830;

public class Point {
	 //멤버 필드
	 int x;
	 int y;
	 
	 //멤버 메서드
	 //리턴타입 메서드이름(){}
	 void print() {
		 System.out.println("x : "+x);
		 System.out.println("y : "+y);
		 //return; //메서드 종료
		 
	 }
	 
	 void setX(int x) {
		 this.x=x;
	 }
	 
	 //리턴타입이 존재: return 뒤에 value가 존재한다.
	 public int getX() {
		 return x;
	 }

}
