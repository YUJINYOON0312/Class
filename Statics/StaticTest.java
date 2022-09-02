package Statics;

public class StaticTest {
	
	String color;
	static double pi=3.141592;
	
	void setColor(String color) {
		this.color=color;
	}
	
	static int plus(int x, int y) {
		return x+y;
	}
	
	public static void main(String[] args) {
		System.out.println(StaticTest.pi);
		//System.out.println(color);
		StaticTest obj=new StaticTest();
		System.out.println(obj.color);
	}

}
