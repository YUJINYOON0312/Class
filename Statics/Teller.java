package Statics;

public class Teller {

	static int no;
	int pos;
	String name;
	void call() {
		System.out.println(++no+"번 손님 "+pos+"창구로 오세요");
	} 
	
	public Teller(String name, int pos) {
		this.name=name;
		this.pos=pos;
	}
}
