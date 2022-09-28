<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인 페이지</h1>
	<hr>
	<div>
		
		<%
			String msg=request.getParameter("error");
		
			if(msg!=null){
				pageContext.setAttribute("msg", msg);
				%>
				<p>${msg }</p>
		<%
			}
		%>
		
	</div>
	<form action="<%=request.getContextPath() %>/member/login" method="post">
		<p>
			<input type="text" name="email" placeholder="이메일">
		</p>
		<p>
			<input type="password" name="pass" placeholder="비밀번호">
		</p>
		<p>
			<button type="submit">로그인</button>
		</p>
	</form>
</body>
</html>