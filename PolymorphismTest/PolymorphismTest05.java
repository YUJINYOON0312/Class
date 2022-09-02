package PolymorphismTest;

public class PolymorphismTest05 {

	public static void main(String[] args) {
		
		System.out.println("1.라면 2.치킨");
		int menu = 2;
		Cooking cooking=null;
		
		switch(menu) {
		case 1:
			cooking = new Noodle();
			break;
		case 2:
			cooking=new FriedChicken();
		}
		cooking.run();

		System.out.println("요리가 완성되었습니다.");
		
		
	}

}
