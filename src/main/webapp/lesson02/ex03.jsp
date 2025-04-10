<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get method</title>
</head>
<body>
	<form method="post" action="/lesson02/ex03_1.jsp">
       <!-- 별명 입력 -->
       <div class="mb-3">
           <label for="nickname" class="form-label">별명</label>
           <input type="text" class="form-control" id="nickname" name="nickname" placeholder="별명을 입력하세요">
       </div>
       
       <!-- 취미 입력 -->
       <div class="mb-3">
           <label for="hobby" class="form-label">취미</label>
           <input type="text" class="form-control" id="hobby" name="hobby" placeholder="취미를 입력하세요">
       </div>
       
       <!-- 고양이/강아지 라디오 버튼 -->
       <div class="mb-3 d-flex">
           <label class="form-label">좋아하는 동물</label>
           <div class="form-check">
               <input class="form-check-input" type="radio" name="animal" id="cat" value="cat">
               <label class="form-check-label" for="cat">고양이</label>
           </div>
           <div class="form-check">
               <input class="form-check-input" type="radio" name="animal" id="dog" value="dog">
               <label class="form-check-label" for="dog">강아지</label>
           </div>
       </div>
       
       <!-- 음식 체크박스 -->
       <div class="mb-3">
           <label class="form-label">좋아하는 음식 (여러 개 선택 가능)</label>
           <div class="form-check">
               <input class="form-check-input" type="checkbox" name="food" id="mintChoco" value="민트초코">
               <label class="form-check-label" for="mintChoco">민트초코</label>
           </div>
           <div class="form-check">
               <input class="form-check-input" type="checkbox" name="food" id="hawaiianPizza" value="하와이안피자">
               <label class="form-check-label" for="hawaiianPizza">하와이안피자</label>
           </div>
           <div class="form-check">
               <input class="form-check-input" type="checkbox" name="food" id="bundegi" value="번데기">
               <label class="form-check-label" for="bundegi">번데기</label>
           </div>
       </div>
       
       <!-- 과일 셀렉트 박스 -->
       <div class="mb-3">
           <label for="fruit" class="form-label">좋아하는 과일</label>
           <select class="form-select" id="fruit" name="fruit">
               <option selected disabled>과일을 선택하세요</option>
               <option value="apple">사과</option>
               <option value="pineapple">파인애플</option>
               <option value="blueberry">블루베리</option>
               <option value="banana">바나나</option>
           </select>
       </div>
       
       <!-- 제출 버튼 -->
       <button type="submit" class="btn btn-primary">전송</button>
	</form>
	
</body>
</html>