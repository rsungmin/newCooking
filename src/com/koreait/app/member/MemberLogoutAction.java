package com.koreait.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.member.dao.MemberDAO;

public class MemberLogoutAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		
		
		String member_id = null; 
		if(session.getAttribute("session_id") != null){ 
			member_id = String.valueOf(session.getAttribute("session_id")); 
			session.invalidate(); 
			}
		forward.setRedirect(true);
		forward.setPath(request.getContextPath()+"/main.jsp");
		return forward;
	}
	
}
