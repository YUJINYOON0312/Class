import java.util.Scanner;

public class IfTestGame {
	
	public static void main(String[] args) {
		//com, user
		//가위:0 , 바위:1, 보:2
		
		int user;
		Scanner sc=new Scanner(System.in);
		System.out.println("가위:0, 바위:1, 보:2");
		System.out.print("선택 : ");
		user=sc.nextInt();
		
		int com = (int) (Math.random()*3); 
		//System.out.println(com);
		//출력 : 당신이 이겼습니다., 서로비겼습니다., 당신이 졌습니다.
		
	}

}
