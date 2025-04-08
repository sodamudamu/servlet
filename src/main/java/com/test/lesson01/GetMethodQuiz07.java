package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMethodQuiz07 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
	    res.setContentType("text/html");
	    res.setCharacterEncoding("utf-8");
	    PrintWriter out = res.getWriter();
	    
	    // HTML 문서 시작
	    out.println("<!DOCTYPE html>");
	    out.println("<html>");
	    out.println("<head>");
	    out.println("<meta charset='UTF-8'>");
	    out.println("<title>주문 결과</title>");
	    out.println("<script>");
	    
	    // 파라미터 value
	    String adress = req.getParameter("adress");
	    String card = req.getParameter("card");
	    String price = req.getParameter("price");
	    
	    boolean hasAlert = false;
	    
	    if(!adress.contains("서울시")) {
	        out.println("alert('배달 불가 지역입니다.');");
	        hasAlert = true;
	    }
	    
	    // 문자열 비교는 equals() 메소드 사용해야 함
	    if ("신한카드".equals(card)) {
	        out.println("alert('결제 불가 카드입니다.');");
	        hasAlert = true;
	    }
	    
	    // 알림창 후 이전 페이지로 돌아가기
	    if (hasAlert) {
	        out.println("history.back();");
	    }
	    
	    out.println("</script></head><body><form method = \"get\" action = \"/lesson/quiz07.html\">");
	    
	    // 알림창이 없을 경우 정상 출력
	    if (!hasAlert) {
	        out.println("<h1>주문 완료</h1>");
	        out.println("<p>배달 주소: " + adress + "</p>");
	        out.println("<p>상태 : <strong>배달 준비중</strong></p>");     
	        out.println("<p>주문 금액: " + price + "</p>");
	        out.println("<input type=\"button\" value=\"이전으로\" onclick=\"history.back()\">");
	        
	    }
	    out.println("</form></body></html>");
	}

}
