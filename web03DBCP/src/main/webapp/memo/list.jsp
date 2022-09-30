<%@page import="domain.dto.MemoDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="<%=request.getContextPath() %>">HOME</a>
	<a href="write">메모쓰기</a>
	<h1>메모장 리스트 페이지 입니다.</h1>
	<table border="1" style="border-spacing: 0;">
		<tr>
			<td>번호</td>
			<td>메모내용</td>
			<td>작성자</td>
			<td>작성일</td>
		</tr>
		<%
		List<MemoDTO> memoList=(List<MemoDTO>)request.getAttribute("list");
		for(MemoDTO dto : memoList){
		%>	
		<tr>
			<td><%=dto.getNo() %></td>
			<td><%=dto.getContent() %></td>
			<td><%=dto.getWriter() %></td>
			<td><%=dto.getCreatedDate() %></td>
		</tr>
		<%
		}
		%>
		
	</table>
</body>
</html>