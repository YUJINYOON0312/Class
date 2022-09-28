<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입 완료!</h1>
	<table border="1"  >
		<tr>
			<td>이메일</td>
			<td><%=request.getAttribute("email") %></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><%=request.getAttribute("pass") %></td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${name }</td>
		</tr>
		<tr>
			<td colspan="2">
				<a href="<%=request.getContextPath() %>">확인</a>
			</td>
		</tr>
		
	</table>
</body>
</html>