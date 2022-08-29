package com.mirror.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mirror.domain.Member;
import com.mirror.domain.MemberDAO;


public class DeleteC extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		MemberDAO dao = new MemberDAO();
		
		int cnt =dao.deleteMember(loginMember);
		if(cnt > 0) {
			System.out.println("회원 탈퇴 성공");
			session.removeAttribute("loginMember");
		}
		else {
			System.out.println("회원 탈퇴 실패");
		}
		response.sendRedirect("main.jsp");
	}

}
