package com.koreait.app.recipe;

import java.util.Enumeration;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.member.dao.MemberBean;
import com.koreait.app.recipe.dao.ReplyBean;
import com.koreait.app.recipe.dao.ReplyDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class RecipeReplyOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		ReplyDAO rdao = new ReplyDAO();
		ReplyBean reply = new ReplyBean();
		MemberBean member = new MemberBean();

		/*String rc_num =request.getParameter("rc_num");
		System.out.println("rc_num: "+rc_num);*/
		
		String filePath = "D:\\Web\\workspace\\newCooking\\WebContent\\app\\upload";
		int fileSize = 5 * 1024 * 1024;
		
//		HttpSession session = request.getSession(false);
//		if(session != null) {
			
			MultipartRequest mul = new MultipartRequest(request, filePath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
			Enumeration<String> files = mul.getFileNames();
			String rc_num =mul.getParameter("rc_num");
//			System.out.println("session: "+session);
//			session.setAttribute("session_id", member);
			
			/*Cookie[] cookies = request.getCookies();		
			String cookieValue= rdao.getCookieValue(cookies, "session_id");*/
	
		    /*Object getSession_id = session.getAttribute("session_id");
		    System.out.println("getSession_id: "+getSession_id);
		    
			MemberBean sessionId = (MemberBean)getSession_id;
			System.out.println("sessionId: "+sessionId);

			String memberId = sessionId.getMember_id();
			System.out.println("memberId: "+memberId);*/
			reply.setMember_id(mul.getParameter("member_id"));
			reply.setRc_num(Integer.parseInt(mul.getParameter("rc_num")));
			reply.setReply_contents(mul.getParameter("reply_contents"));
//			reply.setReply_file_name(mul.getFilesystemName(files.nextElement()));
		
		
		
			Enumeration enums = request.getParameterNames();
			System.out.println("enums: "+enums);
			
			if(rdao.insertReply(reply)) {
				forward.setRedirect(true);			
				forward.setPath(request.getContextPath()+"/recipe/recipeView.rc?rc_num="+rc_num);
				System.out.println("action forward: "+forward);
				return forward;
			}
//		}
		
		return null;
	}

}
