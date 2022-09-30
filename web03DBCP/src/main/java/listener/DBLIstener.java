package listener;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.sql.DataSource;


@WebListener
public class DBLIstener implements ServletContextListener {

    //서버종료시 자동으로 실행하는
    public void contextDestroyed(ServletContextEvent sce)  { 
        System.out.println("contextDestroyed");
    }

	//서버시작시 자동으로 실행하는
    public void contextInitialized(ServletContextEvent sce)  { 
        System.out.println("contextInitialized");
        //JNDI(Java Naming and Directory Interface)
        //디렉토리 서비스에 접근하는데 필요한 API로 서버의 resource 를 찾는다.
        // resource에서 DataSource를 찾아서 Pool을 적용한다.
        Context initContext;
		try {
			initContext = new InitialContext();
			//서버에 자원을 등록할떄 고유한 JNDI이름을 붙입니다.
			//java:/comp/env : 응용프로그램 환경
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			//jdbc/myoracle :  jdbc 데이터소스
	        DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
	        //Connection conn = ds.getConnection();
	        //System.out.println("Connection : "+ds);
	        
	        //ServletContextEvent sce
	        //웹프로젝트가 시작해서 종료될때까지 자원을 관리하는 객체
	        ServletContext sc=sce.getServletContext();
	        sc.setAttribute("dataSource", ds);
		} catch (NamingException e) {
			System.out.println("1. namaing 을 확인하세요");
			System.out.println("2. driver가 있는지 확인하세요");
			System.out.println("3. 접속정보가 맞는지확인하세요");
			e.getStackTrace();
		}
        
    }
	
}
