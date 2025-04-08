package com.test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
* 문자 인코딩 필터
* 모든 요청에 대해 UTF-8 인코딩을 자동으로 설정하는 필터
*/

// 주석 추가!!!!!!!!!
//주석 또 추가
// masterd에 실수로 추가

@WebFilter("/*")  // 모든 URL 패턴에 필터 적용
public class CharacterEncordingFilter implements Filter {

   /**
    * 요청이 서블릿에 도달하기 전에 실행되는 필터 메소드
    * 모든 요청과 응답에 UTF-8 인코딩을 설정
    * 
    * @param req 클라이언트 요청 객체
    * @param res 서버 응답 객체
    * @param chain 필터 체인 (다음 필터 또는 서블릿으로 요청을 전달)
    * @throws IOException 입출력 예외 발생 시
    * @throws ServletException 서블릿 예외 발생 시
    */
	
	// 주석 내용 추가
	
   @Override
   public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
           throws IOException, ServletException {
       // 요청 객체의 문자 인코딩을 UTF-8로 설정
       req.setCharacterEncoding("utf-8");
       // 응답 객체의 문자 인코딩을 UTF-8로 설정
       res.setCharacterEncoding("utf-8");
       
       // 다음 필터 또는 서블릿으로 요청을 전달
       chain.doFilter(req, res);
       // 여기에 코드를 추가하면 응답이 클라이언트로 돌아가는 과정에서 실행됨
   }
}