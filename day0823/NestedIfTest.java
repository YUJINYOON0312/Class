
public class NestedIfTest {
	
	public static void main(String[] args) {
		
		int num;
		num=100;
		
		if(num>0) {
			System.out.println(num+"은 양수!");
		}else {
			//음수 또는 0
			if(num<0) {
				System.out.println(num+"은 음수!");
			}else{
				System.out.println(num+"은 0");
			}
		}
		
	}

}
