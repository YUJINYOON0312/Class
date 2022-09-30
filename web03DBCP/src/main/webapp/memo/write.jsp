<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메모작성하기</h1>
	<form action="write" method="post">
		<p>
			<label>작성자</label>
			<input type="text" name="writer" size="5">
		</p>
		<p>
			<label>메&nbsp;&nbsp;&nbsp;모</label>
			<input type="text" name="content">
			
		</p>
		<p>
			<button type="submit">등록</button>
		</p>
	</form>
</body>
</html>