package com.koreait.app.recipe;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.recipe.dao.ReplyBean;
import com.koreait.app.recipe.dao.ReplyDAO;

public class RecipeReplyDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		ReplyDAO rdao = new ReplyDAO();
		
		
		
		

		
		int reply_num = Integer.parseInt( request.getParameter("reply_num"));
		System.out.println("replynum: "+reply_num);
		
		int rc_num = Integer.parseInt(request.getParameter("rc_num"));
		
		rdao.deleteReply(reply_num);
	
		forward.setPath(request.getContextPath()+"/recipe/recipeView.rc?rc_num="+rc_num);
		forward.setRedirect(true);
		
		return forward;
	}

}
