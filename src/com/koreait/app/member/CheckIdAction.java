package com.koreait.app.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.member.dao.MemberDAO;

public class CheckIdAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		MemberDAO mdao = new MemberDAO();
		
		String member_id = request.getParameter("member_id");
		PrintWriter out = response.getWriter();
		if(mdao.checkId(member_id)) {
			out.println("ok");
		} else {
			out.println("not-ok");
		}
		return null;
	}

	
	
}
