
public class NestedIfTest03 {

	public static void main(String[] args) {
		// 점수(0~100)
		// 90이상~100 : A
		// 80이상~90미만 : B
		// 70이상~80미만 : C
		// 60이상~70미만 : D
		// 60미만 : F
		int num = 95;

		if (num >= 90 ) {
			System.out.println("A");
		}else if (num >= 80 ) {
			System.out.println("B");
		}else if (num >= 70 ) {
			System.out.println("C");
		}else if (num >= 60) {
			System.out.println("D");
		} else {
			System.out.println("F");
		}
		/*
		if(조건1){}
		else if(조건2) {}
		else if(조건3) {}
		else if(조건4) {}
		else if(조건5) {}
		else{}
		*/
		
		

	}

}
