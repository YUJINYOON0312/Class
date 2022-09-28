package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Controller의 역할로 Servlet을 사용
//@WebServlet("/sign/member-proc")//web.xml로 처리할수도 있습니다.
public class MemberController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//로직처리..
		//1.회원가입의 목적
		//2.웹에서 입력한 데이터를 DB에저장
		//-1.전달받은 데이터확인 request 객체에서 가능
		//form 태그내부 입력태그들의 name속성에 값으로 읽어올수 있어요
		request.setCharacterEncoding("utf-8");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String name=request.getParameter("name");
		System.out.println("email: "+email);
		System.out.println("pass: "+pass);
		System.out.println("name: "+name);
		
		//-DB접속
		//드라이버로딩
		String driverClassName="oracle.jdbc.OracleDriver";
		try {
			Class.forName(driverClassName).getDeclaredConstructor().newInstance();
			System.out.println("oracle 드라이버 준비완료!");
		} catch (Exception e) {
			// TODO: handle exception
		}
		//접속
		String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String user="nowon";
		String password="1234";
		
		Connection con=null;
		try {
			con=DriverManager.getConnection(url, user, password);
			System.out.println("접속완료!");
			String sql="insert into member values(seq_mem.nextval, ?,?,?,sysdate)";
			PreparedStatement pstmt=con.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setString(2, pass);
			pstmt.setString(3, name);
			
			int n=pstmt.executeUpdate();//INSERT, UPDATE or DELETE
			System.out.println(n+"개의 회원정보가 저장되었습니다.");
			/*
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			
			if(n==0) {
				out.print("<h1>실패!</h1>");
			}else {
				out.print("<h1>성공!</h1>");
			}
			*/
			//페이지를 서블릿으로 표현하는것은 낭비
			//뷰를 jsp를 이용해서 표현합니다.
			//request저장소를 이용해서 응답페이지까지 전달 가능합니다.
			request.setAttribute("email", email);
			request.setAttribute("pass", pass);
			request.setAttribute("name", name);
			request.getRequestDispatcher("write-done.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
