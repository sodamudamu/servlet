<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalTime" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02_1</title>
</head>
<body>

<%--여기는 그냥 자바 영역 --%>
<!-- request, response, out, session, pageContext, application, config, page, exception은 jsp내장객체다 -->
<%
String param = request.getParameter("check");
String result = "";
    if (param.equals("time")) {
        LocalTime now = LocalTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH시 mm분 ss초");
        //result = "현재 시간은 " + now + "입니다";
        result = "현재 시간은 " + now.format(formatter) + "입니다";
    } else if (param.equals("date")) {
        LocalDate today = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy년 MM월 dd일");
        result = "현재 날짜는 " + today.format(formatter) + "입니다";
    }
%>

<%--return 값은 <%= 사용 --%>
<h2><%= result %></h2>


</body>
</html>