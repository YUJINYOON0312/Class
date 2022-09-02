
public class BitwiseTest {
	
	public static void main(String[] args) {
		byte a=60;//0011 1100
		byte b=13;//0000 1101
		
		//Binary AND Operator
		System.out.println(a&b);// 0000 1100
		//Binary OR Operator
		System.out.println(a|b);// 0011 1101
		//Binary XOR Operator : ^ 
		//비트단위비교시 서로 다른 비트인경우(0:1,1:0) 1
		//비트단위비교시 서로 간은 비트인경우(0:0,1:1) 0
		System.out.println(a^b);// 0011 0001
		
		//비트단위 부정(1->0, 0->1)
		//음수의 이진수 : 2의보수을 취하세요. : 1의보수를 취하고+1
		//-60
		//0011 1100 -> 1100 0011 + 1 : -60
		System.out.println(~a);// 1100 0011 : -60-1
		///////////////////////////////////////////////
		//////////////////////////////////////////////
		//쉬프트 연산자
		System.out.println(a>>2);
		//최.단.산.쉬.관.비.리.삼.대
		System.out.println((byte)(a<<2));
		
		System.out.println(a>>>2);
		a=-60;// 1100 0100
		System.out.println(a>>2);
		
		
	}

}
