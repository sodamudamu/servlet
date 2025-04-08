package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 이 어노테이션이 web.xml 과 같은 역할을 해주는거임
@WebServlet("/lesson01/ex02")
public class UrlMappingEx02 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		res.setCharacterEncoding("utf-8");
		
		PrintWriter out = res.getWriter();
		
		// Servlet 의 특징 -> 자바가 기반 + HTML을 넣을수 잇다ㅎㅎ
		int sum = 0;
		
		for(int i=1 ; i <= 10 ; i++) {
			sum += i;
		}
		
		out.print("<html><head><title>sum</title></head><body>");
		out.print("합계:<b>" + sum + "</b>");
		out.print("</body></html>");		
		
		    
		
		
		
		
		
	}

}
