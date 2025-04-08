package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class UrlMappongQuiz05_gugudan extends HttpServlet{
	
	@Override
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        // 파라미터 받기
        String numberStr = req.getParameter("number");
        
        // 파라미터 유효성 검사 및 변환
        int number;
        try {
            number = Integer.parseInt(numberStr);
        } catch (NumberFormatException e) {
            number = 2; // 기본값 설정
        }
        
        // 응답 설정
        res.setContentType("text/html");
        res.setCharacterEncoding("utf-8");
        PrintWriter out = res.getWriter();
        
        // HTML 출력
        out.print("<html><head><title>" + number + "단</title></head><body>");
        out.print("<h1>" + number + "단</h1>");
        
        // 구구단 출력
        for (int i = 1; i <= 9; i++) {
            out.println(number + " × " + i + " = " + (number * i) + "<br>");
        }
        
        // 뒤로 가기 링크
        out.print("<br><a href='/lesson01/ex05'>돌아가기</a>");
        out.print("</body></html>");
    }

}
