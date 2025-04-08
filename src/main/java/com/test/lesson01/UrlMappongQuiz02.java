package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappongQuiz02 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		//한글 깨짐 방지
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/plain");
		
		PrintWriter out = res.getWriter();
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("hh시 mm분 ss초");
		
		out.println("현재 시간은 "+ sdf.format(now) +" 입니다." );
		
	}

}
