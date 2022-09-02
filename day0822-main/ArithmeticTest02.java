package arithmetic;

public class ArithmeticTest02 {
	
	//++,--
	public static void main(String[] args){
		int a=100, b=200;
		
		a++;
		System.out.println(a);
		a--;
		System.out.println(a);
		++a;
		System.out.println(a);
		--a;
		System.out.println(a);
		//100--;
		
		System.out.println(++b);
		System.out.println(--b);
		//주의사항
		System.out.println(b++);//201
		System.out.println("b:"+b);
		System.out.println(b--);//200
		System.out.println("b:"+b);
		
		int result= 100*2+a++ - --b;
		System.out.println("result:"+result);
		System.out.println("a:"+a);
		System.out.println("b:"+b);
	}

}
