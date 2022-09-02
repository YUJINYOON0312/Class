
public class LogicalTest {
	
	public static void main(String[] args) {
		//And, or
		int a=10, b=20;
		
		//Logical AND operator : && 그리고
		System.out.println(b>10 && a>=10);//true  && true  = true
		System.out.println(b>10 && a>10); //true  && false = false
		System.out.println(b<10 && a>=10);//false && true  = false
		System.out.println(b<10 && a<10); //false && false = false
		
		//Logical OR operator : || 또는
		System.out.println(b>10 || a>=10);//true  || true  = true
		System.out.println(b>10 || a>10); //true  || false = true
		System.out.println(b<10 || a>=10);//false || true  = true
		System.out.println(b<10 || a<10); //false || false = false
		
		//Logical NOT Operator : ! 
		System.out.println( !(b>10) );// !true = false
		System.out.println( !(b<10) );// !false = true
	}

}
