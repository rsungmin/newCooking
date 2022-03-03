package com.koreait.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.member.dao.MemberBean;
import com.koreait.app.member.dao.MemberDAO;

public class MemberModifyPw implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		MemberDAO mdao = new MemberDAO();
		MemberBean member = new MemberBean();
		HttpSession session = request.getSession();
		String member_id = ((MemberBean)session.getAttribute("session_id")).getMember_id();
		System.out.println("MemberModifyPwAction member_id : "+member_id);
		
		member.setMember_id(request.getParameter("member_id"));
		member.setMember_pw(request.getParameter("member_pw"));
		
		mdao.updatePw(member);
		System.out.println("update 완료");
		
		forward.setRedirect(true);
		forward.setPath(request.getContextPath()+"/app/member/memberModifyOk.jsp");
		return forward;
	}

}
