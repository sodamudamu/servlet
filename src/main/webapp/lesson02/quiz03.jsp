<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<title>체격 조건으로 BMI 계산</title>
</head>
<body>
	<form method = "post" action = "/lesson02/quiz03_1.jsp">
	<h1>체격조건 입력 </h1>
	<input type="text" name = "height" placeholder = "키를 입력하세요">cm 
	<input type="text" name = "weight" placeholder = "몸무게를 입력하세요">kg 
	<input type = "submit" class="btn btn-primary" value ="계산">
	</form>
</body>
</html>