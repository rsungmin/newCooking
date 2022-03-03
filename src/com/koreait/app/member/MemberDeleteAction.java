package com.koreait.app.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.member.dao.MemberBean;
import com.koreait.app.member.dao.MemberDAO;

public class MemberDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		MemberBean member = new MemberBean();
		MemberDAO mdao = new MemberDAO();		
		HttpSession session = request.getSession();
		
		String member_id = ((MemberBean)session.getAttribute("session_id")).getMember_id();
		System.out.println("deleteMember member_id : "+member_id);
		
		mdao.deleteMember(member_id);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		session.invalidate();

		System.out.println("회원탈퇴성공");

		forward.setRedirect(true);
		forward.setPath(request.getContextPath()+"/main.jsp");
		return forward;
	}

}
