package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import config.OracleDAO;
import domain.dto.MemoDTO;


@WebServlet(urlPatterns = {"/memo/write","/memo/list"})
public class MemoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//url 생성시 select 문을 실행할거면 get으로 요청
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("MemoController doGet");
		
		String uri=request.getRequestURI();
		System.out.println("URI : "+uri);
		//StringBuffer url=request.getRequestURL();
		//System.out.println("URL : "+url);
		String path=null;
		if(uri.contains("write")) {
			path="/memo/write.jsp";
		}else if(uri.contains("list")) {
			path="/memo/list.jsp";
			//DB에 접속해서 memo테이블정보 모두 갖고오기
			//OracleDAO aa=new OracleDAO();//생성자가 private
			Connection conn=OracleDAO.getConnection();
			String sql="select * from memo order by no desc";
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			
			try {
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				//rs->list
				List<MemoDTO> memoList=new ArrayList<>();
				while(rs.next()) {
					//long no=rs.getLong("no");
					//String content=rs.getString("content");
					String writer=rs.getString("writer");
					LocalDateTime createdDate=rs.getTimestamp("CREATED_DATE").toLocalDateTime();
					//
					MemoDTO dto=new MemoDTO();
					dto.setNo(rs.getLong("no"));
					dto.setContent(rs.getString("content"));
					dto.setWriter(writer);
					dto.setCreatedDate(createdDate);
					
					memoList.add(dto);//list에저장
				}//while()
				//request저장소에 list저장
				request.setAttribute("list", memoList);
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				try {
					if(rs != null)rs.close();
					if(pstmt != null)pstmt.close();
					if(conn != null)conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}//try~catch~finally
			
			
			
			
		}//else if
		//페이지이동
		if(path!=null)
			request.getRequestDispatcher(path).forward(request, response);
		
	}//doGet()
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("MemoController post로 전달되면..실행");
		
		//ServletContext sc=getServletContext();
		//DataSource ds=((DataSource) sc.getAttribute("dataSource"));
		//Connection conn=ds.getConnection();
		//jsp페이지에서 요청할때 전송한 데이터를 받아서 입력
		
		request.setCharacterEncoding("utf-8");
		String content=request.getParameter("content");//name속성 값
		String writer=request.getParameter("writer");//name속성 값
		
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql="insert into memo(no,content,writer) values(seq_m.nextval,?,?)";
		try {
			conn= OracleDAO.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, content);
			pstmt.setString(2, writer);
			
			int n=pstmt.executeUpdate();
			System.out.println(n +"개의 메모가 등록되었습니다.");
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		try {
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		} catch (SQLException e) {}
		
		response.sendRedirect("list");//get 메서드로 재호출
	}

}
