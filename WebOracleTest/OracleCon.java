package controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oracle.jdbc.OracleDriver;


@WebServlet("/oracle")
public class OracleCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//DB접속할 정보가필요합니다. DataSource
		//1. dirverClassName
		//2. url
		//3. user
		//4. password
		String driver="oracle.jdbc.OracleDriver";
		try {
			Class<?> clazz=Class.forName(driver);
			try {
				clazz.getDeclaredConstructor().newInstance();
			} catch (InstantiationException | IllegalAccessException | IllegalArgumentException
					| InvocationTargetException | NoSuchMethodException | SecurityException e) {
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="nowon";
		String password="1234";
		Connection con=null;
		try {
			con=DriverManager.getConnection(url, user, password);
			System.out.println("DB접속완료!!!!!");
			request.getRequestDispatcher("result.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {if(con!=null)con.close();} catch (SQLException e) {}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
