package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappongQuiz01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		//한글 깨짐 방지
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/plain");
		
		//날짜 객체 
		Date now = new Date();

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 M월 d일");
		PrintWriter out = res.getWriter();
		
		out.println("오늘의 날짜는 "+ sdf.format(now) );
		
	}

}
