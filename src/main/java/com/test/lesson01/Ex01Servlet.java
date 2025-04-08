package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// class명은 항상 대문자로 시작!
public class Ex01Servlet extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		//한글 깨짐 방지 - response header에 넣는 구문
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/plain");
		
		// 이건 body에 들어감
		PrintWriter out = res.getWriter();
		out.println("안녕하세요우");
		
		Date now  = new Date();
		System.out.println(now);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss");
		out.println(sdf.format(now));
		
		
	}
}
