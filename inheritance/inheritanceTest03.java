package inheritance;

class AAA{
	int a;
	int b;
	public AAA(int a) {
		super();
		this.a=a;
	}
	public AAA(int a, int b) {
		this(a);
		this.b=b;
	}
}

class BBB extends AAA{
	
	public BBB(int a) {
		super(a);		
	}
}

public class inheritanceTest03 {

	public static void main(String[] args) {
		
	}

}
