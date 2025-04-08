package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex05")
public class UrlMappongQuiz05 extends HttpServlet{
	
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        res.setCharacterEncoding("utf-8");
        PrintWriter out = res.getWriter();

        // 파라미터가 없을 때
        String numberStr = req.getParameter("number");
        int number = 0; // 기본값 설정
        
        // 파라미터가 있을때
        if (numberStr != null && !numberStr.isEmpty()) {
            try {
                number = Integer.parseInt(numberStr);
            } catch (NumberFormatException e) {
            }
        }

        out.print("<html><head><title>구구단 링크</title></head><body>");
        
        for (int i = 2; i < 10; i++) {
            out.print("<a href='/lesson01/quiz05?number=" + i + "'>" + i + "단 </a><br>");
        }
        
        out.print("</body></html>");
    }

}
