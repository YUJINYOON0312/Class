import java.util.HashSet;
import java.util.Random;
import java.util.Set;

public class Test {
	
	public static void main(String[] args) {
		
		int[] nums= {1,2,3,4,5,6,7,8,10
				,12,13,15,18,19,23,26
				,27,28,30,11,22,29,16,24,14,17,25,21,9};
		Random random=new Random();
		//Person person=new Person();
		//boolean flag=true;
		int num=0;
		do{
			num=random.nextInt(30)+1;//1~30
			System.out.println("임시:"+num);
			for(int i=0; i<nums.length; i++) {
				if(num==nums[i]) {
					num=0;
					break;
				}
			}

		}while(num==0);
		System.out.println("num : "+ num);
		
	}

}

class Person{
	String name;
	int age;
}


