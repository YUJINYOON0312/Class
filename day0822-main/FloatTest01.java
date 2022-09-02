
public class FloatTest01 {
	
	public static void main(String[] agrs) {
		
		//데이터타입 변수이름;
		//4byte 메모리공간
		float num = 0.0f;
		
		for( int i=0 ; i<100 ; i++) {
			//공간=값+0.1f
			num = num + 0.1f;
			
		}
		System.out.println(num);
		
	}

}
