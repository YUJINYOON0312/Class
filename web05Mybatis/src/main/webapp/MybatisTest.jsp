<%@page import="nowon.mybatis.MybatisConfig"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactoryBuilder"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.io.Resources"%>
<%@page import="java.io.InputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%


//SqlSession sqlSession=sqlSessionFactory.openSession();
System.out.println(MybatisConfig.getInstance());
//sqlSession.close();
%>
</body>
</html>