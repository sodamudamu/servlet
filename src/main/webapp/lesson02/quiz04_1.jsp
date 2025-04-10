<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
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
/* cm를 인치(inch)로: 1 cm = 0.3937 인치
cm를 피트(feet)로: 1 cm = 0.0328 피트
cm를 야드(yard)로: 1 cm = 0.0109 야드
cm를 미터(meter)로: 1 cm = 0.01 미터
*/
int cm = Integer.parseInt(request.getParameter("cm"));
String inchParam = request.getParameter("inch");
String feetParam = request.getParameter("feet");
String yardParam = request.getParameter("yard");
String meterParam = request.getParameter("meter");

%>

<%--return 값은 <%= 사용 --%>

  <h2>길이 변환 결과</h2>
  <h1><span class="text-info"><%= cm %></span>cm</h1>
  <hr>

  <% if (inchParam != null) { %>
      <%= cm * 0.393701 %> in<br>
  <% } %>
  
  <% if (yardParam != null) { %>
      <%= cm * 0.00109361 %> yd<br>
  <% } %>
  
  <% if (feetParam != null) { %>
      <%= cm * 0.0328084 %> ft<br>
  <% } %>
  
  <% if (meterParam != null) { %>
      <%= cm * 0.01 %> m<br>
  <% } %>

</body>
</html>