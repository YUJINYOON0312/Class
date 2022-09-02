package day0902_02;

public class PersonTest {

	public static void main(String[] args) {
		
		Person p = new Person();
		System.out.println("------");
		
		Student s = new Student();
		System.out.println("------");
		
		Soldier so = new Soldier();
		System.out.println("------");
		
		Employee e = new Employee();
		
		
		System.out.println(s.schoolName); 
		//자식킇래스로 인스턴스화 하고 부모타입으로 접근이 가능
		Person sp=new Student();
		//대신 부모의 멤버에만 접근 할 수 있음: 자식멤버 접근불가
		//System.out.println(sp.schoolName);
	}

}
