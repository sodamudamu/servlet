<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<title>길이 변환</title>
</head>
<body>
	<form method = "post" action = "/lesson02/quiz04_1.jsp" onsubmit="return validateForm()">
	<h1>길이 변환 </h1>
	<input type="text" name = cm id="cmInput">
	cm<br>
	<input type="checkbox" name="type" value="inch">인치
	<input type="checkbox" name="type" value="yard">야드
	<input type="checkbox" name="type" value="feet">피트
	<input type="checkbox" name="type" value="meter">미터
	<br>
	<input type = "submit" class="btn btn-success" value ="변환하기">
	</form>
	<script>
	  function validateForm() {
	    var cmValue = document.getElementById('cmInput').value.trim();
	    
	    if (cmValue === '' || cmValue === null) {
	      alert('숫자를 입력해주세요.');
	      return false; // 폼 제출 중단
	    }
	    // 숫자가 아닌 값이 입력된 경우
	    if (isNaN(cmValue)) {
	      alert('유효한 숫자를 입력해주세요.');
	      return false;
	    }	   
	    return true; // 폼 제출 계속 진행
	  }
	</script>	
</body>
</html>