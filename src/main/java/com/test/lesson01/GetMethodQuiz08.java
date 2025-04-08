package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
	    res.setContentType("text/html");
	    res.setCharacterEncoding("utf-8");
	    PrintWriter out = res.getWriter();
	    
	    List<String> list = new ArrayList<>(Arrays.asList(
	            "강남역 최고 맛집 소개 합니다.", 
	            "오늘 기분 좋은 일이 있었네요.", 
	            "역시 맛집 데이트가 제일 좋네요.", 
	            "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
	            "자축 저 오늘 생일 이에요."));
  	    
	    // HTML 문서 시작
	    out.println("<html><head><meta charset='UTF-8'><title>검색 결과</title></head><body>");
	    
	    // 파라미터 value
	    String keyword = req.getParameter("keyword");
	    
	    Iterator<String> iter = list.iterator();
	    while(iter.hasNext()) {
	    	String text = iter.next();
//	    	out.print(text);
	    	
	    	if(text.contains(keyword)) {
	    		out.print(text + "<br>");
	    		text.replace(text, "<p><b>"+text+"<b></p>");
	    	}else {
	    		text.replace(text, "<p>"+text+"<p>");	    		
	    	}
	    }
	    
	    
	    // list 값에 keyword 가 포함되었을 경우 bold 처리
//	    for (String text : list) {
//	        if (keyword != null && !keyword.isEmpty()) {
//	            if (text.contains(keyword)) {
//	                String boldText = text.replace(keyword, "<b>" + keyword + "</b>");
//	                out.println("<p>" + boldText + "</p>");
//	            }
//	        } else {
//	            // 키워드가 없으면 그냥 출력
//	            out.println("<p>" + text + "</p>");
//	        }
//	    }
	    
	    out.println("</body></html>");
	}

}
