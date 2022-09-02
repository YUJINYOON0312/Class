
public class LiteralsTest {
	private int aaa;
	
	LiteralsTest(){
		int a;
	}
	public static void main(String[] args) {
		int i=0;
		System.out.println(i);
		byte a=68;
		
		System.out.printf("a : %d\n", a);
		
		char b='A';
		System.out.printf("b\" : %d, %c \n", (int)b, b);
		int c=100;
		System.out.println(c);
		c=012;//8진수12 : 10
		System.out.println(c);
		c=0x12;//16진수12: 18
		System.out.println(c);
		char d='가';
		System.err.printf("%x\n", (int)d);
		char e='\uac00';
		System.err.println(e);
		
	    System.out.printf("내이름은\t\"조재청\"입니다.");
	    
	    float numa=3.14F;
	    long num=2200000000L;
	    
	    String str="문자열데이터";
	    
	    System.out.println();
		
	}

}
