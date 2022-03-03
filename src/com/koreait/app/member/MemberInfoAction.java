package com.koreait.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.member.dao.MemberBean;
import com.koreait.app.member.dao.MemberDAO;

public class MemberInfoAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		MemberDAO mdao = new MemberDAO();
		MemberBean member = new MemberBean();
		HttpSession session = request.getSession();
		
		String member_id = ((MemberBean)session.getAttribute("session_id")).getMember_id();
		System.out.println("member_id : "+member_id);
		member = mdao.getDetail(member_id);
		if(member != null) {
			request.setAttribute("member", member);
			System.out.println("member : "+member);
			forward.setPath("/app/member/memberModify.jsp");
			forward.setRedirect(false);
			return forward;
		}
		return null;
	}

}
