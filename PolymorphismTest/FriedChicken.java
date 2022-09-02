package PolymorphismTest;

public class FriedChicken extends Cooking{

	@Override
	void run() {
		System.out.println("1. 기름 160도까지 올려주세요.");
		System.out.println("2. 준비된 반죽에 닭을 버무려주세요.");
		System.out.println("3. 14분정도 튀겨서 기름을 잘 빼주세요.");
	}
	
	

}
