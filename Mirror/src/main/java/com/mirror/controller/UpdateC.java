package com.mirror.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mirror.domain.Member;
import com.mirror.domain.MemberDAO;


public class UpdateC extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[UpdateC]");
		
		request.setCharacterEncoding("utf-8");
		String m_id =request.getParameter("m_id");
		String m_pw = request.getParameter("m_pw");
		String m_nick =request.getParameter("m_nick");
		HttpSession session = request.getSession();
		
		Member loginMember = (Member)session.getAttribute("loginMember");
//		Member updateMember = new Member(loginMember.getM_id(), m_pw, m_nick);
		Member updateMember = new Member(loginMember.getM_id(), m_pw, m_nick);
		
		loginMember.setM_nick(updateMember.getM_nick());
		loginMember.setM_pw(updateMember.getM_pw());
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.updateMember(updateMember);
		if(cnt >0) {
			// 회원가입 정보를 유지해야 한채로 joinSuccess.jsp로 이동해야 한다면
			// forward방식으로 이동해야 한다.
			// 유지할 필요가 없으면 response.sendRedirect();로 이동
			System.out.println("회원정보 수정 성공");
			session.setAttribute("loginMember", updateMember);
			response.sendRedirect("MyPage.jsp");
		
		}
		else {
			System.out.println("회원 정보 수정 실패");
			response.sendRedirect("main.jsp");
		}
		
		response.sendRedirect("main.jsp");
	}

}