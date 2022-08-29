package com.mirror.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mirror.domain.Member;


public class LogoutC extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		Member member=(Member)session.getAttribute("loginMember");
		
		if(member != null) {
			session.removeAttribute("loginMember");
			
			String sess=(String)session.getAttribute("loginMember");
			if(sess == null) {
				System.out.println("세션 삭제 완료");
				
			}
		}
		response.sendRedirect("main.jsp");
		
	}

}
