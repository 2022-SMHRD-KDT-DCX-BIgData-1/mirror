package com.mirror.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mirror.domain.Member;
import com.mirror.domain.MemberDAO;



public class LoginC extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		Member vo ;
		request.setCharacterEncoding("utf-8");
		String id =request.getParameter("id");
		String pw =request.getParameter("pw");
		
		vo = new Member(id,pw);
		MemberDAO dao = new MemberDAO();
		Member loginMember =dao.selectMember(vo);
		
		if(loginMember != null) {
			System.out.println("로그인 성공");
			session.setAttribute("loginMember", loginMember);
			response.sendRedirect("mainSuccess.jsp");
			
		}
		else {
			System.out.println("로그인 실패");	
			response.sendRedirect("Login.jsp");
			
		}
	
		
	}

}