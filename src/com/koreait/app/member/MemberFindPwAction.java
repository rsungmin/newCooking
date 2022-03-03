package com.koreait.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.member.dao.MemberBean;
import com.koreait.app.member.dao.MemberDAO;

public class MemberFindPwAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		MemberBean member = new MemberBean();
		MemberDAO mdao = new MemberDAO();
		
		String member_id = request.getParameter("member_id");
		String member_phone = request.getParameter("member_phone");
		System.out.println("member_id : "+member_id);
		System.out.println("member_phone : "+member_phone);
		member = mdao.findPw(member_id, member_phone);
		System.out.println("member : "+member);
		
		if(member != null) {
			request.setAttribute("member", member);
			forward.setPath("/app/member/memberFindPwOk.jsp");
			forward.setRedirect(false);

			return forward;
		}
		System.out.println("null");
		return null;

	}

}
