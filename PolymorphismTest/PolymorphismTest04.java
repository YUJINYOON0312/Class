package PolymorphismTest;

public class PolymorphismTest04 {

	public static void main(String[] args) {
		
		System.out.println("1.라면 2.치킨");
		int menu = 1;
		
		switch(menu) {
		case 1:
			Noodle noodle = new Noodle();
			noodle.run();
			break;
		case 2:
			FriedChicken chicken=new FriedChicken();
			chicken.run();
		}
		System.out.println("요리가 완성되었습니다.");
		
		
	}

}
