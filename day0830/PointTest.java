package day0830;

public class PointTest {

	public static void main(String[] args) {
		
		//지역변수:stack 메모리에 공간
		Point p1=new Point();//클래스 이름을 데이터 타입으로 지정
		//System.out.println(p1.x);
		//System.out.println(p1.y);
		
		p1.getX();
		p1.setX(100); //메서드 호출 int x=100
		p1.print();
		
		Point p2=new Point();
		//System.out.println(p2.x);
		//System.out.println(p2.y);
		p2.print();
	}

}
