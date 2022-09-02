
public class DoubleTest {
	
	public static void main(String[] args) {
		
		double num=0.0;
		for(int i=0 ; i<100 ; ++i) {
			num = num + 0.1;
		}
		
		System.out.printf("%.7f",num);
	}

}
