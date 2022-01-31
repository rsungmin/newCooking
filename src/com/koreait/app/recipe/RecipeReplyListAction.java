package com.koreait.app.recipe;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.recipe.dao.RecipeBean;
import com.koreait.app.recipe.dao.ReplyBean;
import com.koreait.app.recipe.dao.ReplyDAO;

public class RecipeReplyListAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		ReplyDAO rpdao = new ReplyDAO();
		RecipeBean recipe = new RecipeBean();
		ReplyBean reply = new ReplyBean();
		
		reply.setRc_num(42);
		List<ReplyBean> replyList = rpdao.getReply(42);
		request.setAttribute("recipe", recipe);
		request.setAttribute("replyList",replyList);
		System.out.println("RecipeReplyList replyList: "+replyList);
		request.setAttribute("reply", reply);
		
		forward.setPath(request.getContextPath()+"/recipe/recipeiew.re?rc_num=42");
		forward.setRedirect(false);
		
		return forward;
	}
}
