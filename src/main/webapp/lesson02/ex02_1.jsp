<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get method 2번째 페이지</title>
</head>

<body>
	<h1>2 pages</h1>
	<b>아이디 : </b>
	<%= request.getParameter("user_id") %>
	<br>
	<b>이름 : </b>
	<%= request.getParameter("name") %>
	<br>
	<b>나이 : </b>
	<%= request.getParameter("age") %>	
	
</body>
</html>