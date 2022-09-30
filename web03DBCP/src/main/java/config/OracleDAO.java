package config;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class OracleDAO {
	
	private static DataSource ds;
	
	public static Connection getConnection(){
		//if(ds==null) new OracleDAO();
		Connection conn=null;
		try {
			conn = ds.getConnection();//pool에서 접속 객체 연결
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	static {
		System.out.println("최초 사용시 딱 1번만 실행됩니다.");
		Context initContext;
		try {
			initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/myoracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
		
	private OracleDAO() {
		/*
		System.out.println("최초 사용시 딱 1번만 실행됩니다.");
		Context initContext;
		try {
			initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/myoracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
		*/
	}

}
