package com.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// import 하려면 단축키 ctrl + shft + o 
// 주석 단축키는 ctrl + / 또는 Ctrl + Shift + /

public class HelloServlet extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
	PrintWriter out = response.getWriter();
	out.println("Hello World :)");
	}

}
