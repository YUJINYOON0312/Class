
public class SwitchTest01 {
	
	public static void main(String[] args) {
		int sw=0;
		switch(sw) {
		case 0:
			System.out.println("off");
			break;//{}탈출합니다
		case 1:
			System.out.println("on");
		}
		///////////////////////////////////
		char day='월';
		switch(day) {
		case '월':
		case '화':
		case '수':
		case '목':
		case '금':
		case '토':
		default:
		}
		
		String season="봄";
		switch(season) {
		case "봄":
		case "여름":
		case "가을":
		case "겨울":
		}
		//Only convertible int values, strings or enum variables are permitted
		//실수형은 switch() 데이터 불가
		/*
		double rate=1.5;
		switch(rate) {
		case 1.5:
		case 2.5:
		case 3.5:
		case 4.5:
		}
		*/
		
		
	}

}
