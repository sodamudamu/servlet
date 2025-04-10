<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>

<body>
 <%
    request.setCharacterEncoding("UTF-8");
    
    String nickname = request.getParameter("nickname");
    String hobby = request.getParameter("hobby");
    String animal = request.getParameter("animal");
    String[] foodArr = request.getParameterValues("food"); // 여러개가 체크되서 오는거는 getParameterValues 배열로 받아야 함 
    String fruit = request.getParameter("fruit");
    
    String animalKorean = "";
    if (animal != null) {
        if (animal.equals("cat")) animalKorean = "고양이";
        else if (animal.equals("dog")) animalKorean = "강아지";
    }
    
    String fruitKorean = "";
    if (fruit != null) {
        if (fruit.equals("apple")) fruitKorean = "사과";
        else if (fruit.equals("pineapple")) fruitKorean = "파인애플";
        else if (fruit.equals("blueberry")) fruitKorean = "블루베리";
        else if (fruit.equals("banana")) fruitKorean = "바나나";
    }
    
 // String.join() 메소드를 사용해 음식 배열을 문자열로 변환
 // String.join() 사용 (Java 8 이상)
    String foodsStr = "";
    if (foodArr != null && foodArr.length > 0) {
        foodsStr = String.join(", ", foodArr);
    }
    %>

    <h2>입력하신 정보</h2>
    <table border="1">
        <tr>
            <th>항목</th>
            <th>입력 정보</th>
        </tr>
        <tr>
            <td>별명</td>
            <td><%= nickname %></td>
        </tr>
        <tr>
            <td>취미</td>
            <td><%= hobby %></td>
        </tr>
        <tr>
            <td>좋아하는 동물</td>
            <td><%= animalKorean %></td>
        </tr>
        <tr>
            <td>좋아하는 음식</td>
            <td><%= foodsStr %></td>
        </tr>
        <tr>
            <td>좋아하는 과일</td>
            <td><%= fruitKorean %></td>
        </tr>
    </table>
	
</body>
</html>