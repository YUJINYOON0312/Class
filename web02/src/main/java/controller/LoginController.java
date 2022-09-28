package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/member/login")
public class LoginController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		//로그인 처리
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
				//Statement pstmt=null;
				//String sql="select count(*) from member where email='"+email+"' and pass='"+pass+"'";
				//String sql="select count(*) from member where email=? and pass=?";
				//***** 일반적으로 로그인시 아이디와 패스워드 를 where절에 동시에 사용하지 않아요
				//***** 아이디 먼저 확인하고 비밀번호를 나중에 확인하는 작업순으로 하는게 안전합니다.
				PreparedStatement pstmt=null;
				String sql="select pass, name from member where email=?";
				String path=null;
				try {
					con=DriverManager.getConnection(url, user, password);
					System.out.println("접속완료!");
					
					pstmt=con.prepareStatement(sql);
					//pstmt=con.createStatement();
					//ResultSet rs=pstmt.executeQuery(sql);
					pstmt.setString(1, email);
					
					
					ResultSet rs= pstmt.executeQuery();
					int n=0;
					if(rs.next()) {
						System.out.println("email일치한경우");
						String _pass=rs.getString("pass");
						if(pass.equals(_pass)) {
							System.out.println("비밀번호 일치");
						}else {
							System.out.println("비밀번호 상이");
						}
					}else {
						System.out.println("회원이 존재하지 않아요");
					}
					
					
				} catch (SQLException e) {
					e.printStackTrace();
				}finally {
					try {
						if(pstmt!=null)pstmt.close();
						if(con!=null)con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
				
				
				
	}//doGet
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}//doPost

}
