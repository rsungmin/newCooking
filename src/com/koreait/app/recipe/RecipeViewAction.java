package com.koreait.app.recipe;

import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.recipe.dao.RecipeBean;
import com.koreait.app.recipe.dao.RecipeDAO;
import com.koreait.app.recipe.dao.ReplyBean;
import com.koreait.app.recipe.dao.ReplyDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class RecipeViewAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		RecipeDAO rdao = new RecipeDAO();
		ReplyDAO rpdao = new ReplyDAO();
		ReplyBean reply = new ReplyBean();
		System.out.println("ViewAction 들어옴");

		
		int rc_num = Integer.parseInt(request.getParameter("rc_num"));
		System.out.println("rc_num: "+rc_num);		
		rdao.updateViewCnt(rc_num);
		
		
		RecipeBean recipe = rdao.getDetail(rc_num);		
		List<ReplyBean> replyList = rpdao.getReply(rc_num);		
		if(recipe != null) {
			request.setAttribute("recipe", recipe);									
			request.setAttribute("replyList", replyList);						
			request.setAttribute("reply", reply);			
			forward.setPath("/app/recipe/recipeView.jsp");
			forward.setRedirect(false);			
			return forward;
		}
		return null;
	}
}
