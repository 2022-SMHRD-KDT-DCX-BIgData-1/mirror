package com.mirror.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mirror.domain.Member;
import com.mirror.domain.MemberDAO;



public class JoinC extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel =request.getParameter("tel");
		String address = request.getParameter("address");
		
		Member vo= new Member(email, pw, tel, address);
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.insertMember(vo);
		if(cnt >0) {
			// 회원가입 정보를 유지해야 한채로 joinSuccess.jsp로 이동해야 한다면
			// forward방식으로 이동해야 한다.
			// 유지할 필요가 없으면 response.sendRedirect();로 이동
			System.out.println("회원가입 성공");
			RequestDispatcher rd = request.getRequestDispatcher("joinSuccess.jsp");
			request.setAttribute("joinInfo", vo);
			rd.forward(request, response);
	
		}
		else {
			System.out.println("회원가입 실패");
			response.sendRedirect("main.jsp");
		}
	}

}
