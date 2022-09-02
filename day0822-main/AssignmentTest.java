import java.io.IOException;
import java.io.InputStream;

public class AssignmentTest {
	
	public static void main(String[] args) throws IOException {
		//int class;
		//int 6hour;
		//int int;
		int $value;
		int _value;
		int a=10,b=20;
		int c=a+b;
		//공간=값
		System.out.println(c);
		//중복을 싫어해요
		a = a - 100;
		
		a -= 100;
		
		System.out.println(a);
		
		//삼항연산자
		String data= b%2==0 ?"짝수":"홀수";
		System.out.println(data);
		
		byte byteValue=10;
		char charValue='A';
		
		//int intValue=charValue;
		//short shortValue=charValue;
		//double doubleValue=byteValue;
		int intValue=100;
		long longValue=100l;
		float floatValue=longValue;
		System.out.printf("%f\n",Float.MAX_VALUE);
		System.out.println(Float.MAX_VALUE);
		System.out.println(Float.MIN_VALUE);
		//Float.
		
		double var1=(double)intValue;
		
		byte var2=(byte) -129;
		System.out.println(var2);
		int var3=(int) 3.14;
		//char var4=(char)"aaaa";
		char var4="abcde".charAt(0);
		//char var5='';
		char var5='\0';
		
		System.out.println("var5:"+var5);
		System.out.printf("var5 : %d\n",(int)var5);
		
		var5='0';
		System.out.println("var5 : "+var5);
		System.out.printf("var5 : %d\n",(int)var5);
		/////////////////////////////////////////////
		
		//InputStream is=System.in;
		//int inData=is.read()-48;
		//System.out.println(inData);
		
		byte bValue=10;
		float fValue=2.5f;
		double dValud=2.5;
		
		byte result=(byte) (bValue+bValue);
		int result1=5+bValue;
		
		float result2=5+fValue;
		double result3=5+dValud;
		//
		
		
	}

}
