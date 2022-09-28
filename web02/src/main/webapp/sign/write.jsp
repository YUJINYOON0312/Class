<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav>
		<a href="<%=request.getContextPath() %>">HOME1</a>
		<a href="/web02">HOME2</a>
		<a href="<%=request.getContextPath() %>/sign/write.jsp">회원가입</a>
	</nav>
	<hr>
	<h1>회원가입 페이지입니다.</h1>
	<form action="./member-proc" method="post" >
		<p>
			<input type="text" name="email" placeholder="이메일을 입력하세요">
		</p>
		<p>
			<input type="password" name="pass" placeholder="비밀번호를 입력하세요">
		</p>
		<p>
			<input type="text" name="name" placeholder="이름을 입력하세요">
		</p>
		<button>회원가입1</button>
	</form>
</body>
</html>