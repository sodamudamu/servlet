<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalTime" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html>
<head>
<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Quiz02_1</title>
</head>
<body>

<%--여기는 그냥 자바 영역 --%>
<!-- request, response, out, session, pageContext, application, config, page, exception은 jsp내장객체다 -->
<%
// Double로 변환 
double height = Double.parseDouble(request.getParameter("height"));
double weight = Double.parseDouble(request.getParameter("weight"));

// BMI 계산 
double bmiResult = weight / Math.pow(height/100, 2);

// 상태 판정
String status = (bmiResult <= 20) ? "저체중" :
                (bmiResult <= 25) ? "정상" :
                (bmiResult <= 30) ? "과체중" : "비만";

%>

<%--return 값은 <%= 사용 --%>
<h2>BMI 측정 결과</h2>
<h1>당신은 <span class="text-info"><%= status %></span>입니다.</h1>
BMI 수치 : <%= bmiResult %>


</body>
</html>