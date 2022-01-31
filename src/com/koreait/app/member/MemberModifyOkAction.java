package com.koreait.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.member.dao.MemberBean;
import com.koreait.app.member.dao.MemberDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MemberModifyOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		MemberBean member = new MemberBean();
		MemberDAO mdao = new MemberDAO();
		ActionForward forward = new ActionForward();
		String saveFolder = request.getServletContext().getRealPath("app/files");
		int size = 1024 * 1024 * 5;// 5MB
		MultipartRequest multi = new MultipartRequest(request, saveFolder, size, "UTF-8",
				new DefaultFileRenamePolicy());
		
		int member_num = Integer.parseInt(multi.getParameter("member_num"));
		member.setMember_num(member_num);
		member.setMember_email(multi.getParameter("member_email"));
		member.setMember_id(multi.getParameter("member_id"));
		
		return null;
	}
	
}
