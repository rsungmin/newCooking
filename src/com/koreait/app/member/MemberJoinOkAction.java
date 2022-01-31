package com.koreait.app.member;

import java.util.Enumeration;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;
import com.koreait.app.member.dao.MemberBean;
import com.koreait.app.member.dao.MemberDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MemberJoinOkAction {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		
		MemberDAO mdao = new MemberDAO();
		MemberBean member = new MemberBean();
		String filePath = "C:\\Web_1500\\JSP\\workspace\\project\\WebContent\\app\\upload";
//		String filePath = "../app/upload";
		int fileSize = 5 * 1024 * 1024;
		
		MultipartRequest mul = new MultipartRequest(request, filePath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		Enumeration<String> files = mul.getFileNames();
		member.setMember_id(mul.getParameter("member_id"));
		member.setMember_name(mul.getParameter("member_name"));
		member.setMember_pw(mul.getParameter("member_pw"));
		member.setMember_phone(mul.getParameter("member_phone"));
		member.setMember_email(mul.getParameter("member_email"));
		member.setMember_file(mul.getFilesystemName(files.nextElement()));
		member.setMember_addr(mul.getParameter("member_addr"));
		member.setDetail_addr(mul.getParameter("detail_addr"));
		member.setMember_iddn(mul.getParameter("member_iddn"));
		member.setMember_postcode(mul.getParameter("member_postcode"));
		member.setEtc_addr(mul.getParameter("etc_addr"));
		member.setUrl(mul.getParameter("url"));
		
		if(mdao.join(member)) {
			Cookie cookie = new Cookie("joinid", member.getMember_id());
			cookie.setPath("/");
			response.addCookie(cookie);
			
			forward.setRedirect(true);
			forward.setPath(request.getContextPath()+"/app/member/login.jsp");
		}
		return forward;
	}
	
}







