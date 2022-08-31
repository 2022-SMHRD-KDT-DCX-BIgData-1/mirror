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
		int m_no = 0;
		String m_id = request.getParameter("m_id");
		String m_pw = request.getParameter("m_pw");
		String m_nick =request.getParameter("m_nick");
		
		Member vo= new Member(m_no, m_id, m_pw, m_nick);
		
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
			response.sendRedirect("Join.jsp");
		}
	}

}
