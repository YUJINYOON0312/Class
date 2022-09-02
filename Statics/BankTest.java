package Statics;

import java.util.Random;

public class BankTest {

	public static void main(String[] args) throws InterruptedException {
		
		Teller[] tellers=new Teller[4];
		for(int i=0; i<tellers.length; i++ ) {
			tellers[i] = new Teller("텔러" + (i+1), i+1);
			
		}
		Random ran=new Random();
		
		while(Teller.no<10) {
			Thread.sleep(500);
			int pos=ran.nextInt(4); //0~3
			tellers[pos].call();
		}
		
		
		
	}

}
