package com.ispan.servlet;

import java.io.IOException;

import com.ispan.bean.Member;
import com.ispan.dao.MemberDao;
import com.ispan.util.CreateConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		if (account == null) {
			request.getRequestDispatcher("/JSP/Login.jsp")
			.forward(request, response);
		}
		Member member = new Member();
		member.setAccount(account);
		member.setPassword(password);
		HttpSession session = request.getSession();
		
		try (CreateConnection createConnection = new CreateConnection()) {
			MemberDao memberDao = new MemberDao(createConnection);
			member = memberDao.checkLogin(member);
		}
		String role = member.getRole();
		if (role=="guest") {
			request.setAttribute("role", role);
			request.getRequestDispatcher("/JSP/Login.jsp")
			.forward(request, response);
		}
		member.setPassword("*****");
		session.setAttribute("member", member);
		response.sendRedirect("/member/JSP/Home.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
