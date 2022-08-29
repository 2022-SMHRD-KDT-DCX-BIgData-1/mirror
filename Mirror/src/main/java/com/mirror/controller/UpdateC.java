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
		request.setCharacterEncoding("utf-8");
		String pw =request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address =request.getParameter("address");
		HttpSession session = request.getSession();
		
		Member loginMember = (Member)session.getAttribute("loginMember");
		Member updateMember = new Member(loginMember.getEmail(), pw, tel, address);
		
		loginMember.setPw(updateMember.getPw());
		loginMember.setTel(updateMember.getTel());
		loginMember.setAddress(updateMember.getAddress());
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.updateMember(loginMember);
		if(cnt >0) {
			// 회원가입 정보를 유지해야 한채로 joinSuccess.jsp로 이동해야 한다면
			// forward방식으로 이동해야 한다.
			// 유지할 필요가 없으면 response.sendRedirect();로 이동
			System.out.println("회원정보 수정 성공");
			
		
		}
		else {
			System.out.println("회원 정보 수정 실패");
			response.sendRedirect("main.jsp");
		}
		
		response.sendRedirect("main.jsp");
	}

}