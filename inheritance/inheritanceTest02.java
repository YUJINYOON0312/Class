package inheritance;

class AA{
	public AA() {
		super(); //부모클래스 생성자:생략되어 있음 명시할때는 무조건 첫줄에만
		System.out.println("AA클래스의 생성자");
	}
	
}
class BB extends AA{
	public BB() {
		super(); //생략되어 있음
		System.out.println("BB클래스의 생성자");
	}
}

public class inheritanceTest02 {

	public static void main(String[] args) {
		
		BB bb=new BB();
		//super()인 AA()인스턴스화 되고 BB()도 인스턴스화 된다.
	}

}
