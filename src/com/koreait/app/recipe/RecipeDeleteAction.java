package com.koreait.app.recipe;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.recipe.dao.RecipeDAO;


public class RecipeDeleteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		RecipeDAO rdao = new RecipeDAO();
		
//		int rc_num = Integer.parseInt(request.getParameter("rc_num").trim());
		String rcNum = request.getParameter("rc_num");
		System.out.println("RecipeDeleteAction rcNum: " + rcNum);
		
		int rc_num = Integer.parseInt(rcNum);
		System.out.println("RecipeDeleteAction rc_num: "+rc_num);
		
		rdao.deleteRecipe(rc_num);
		
		forward.setRedirect(true);
		forward.setPath(request.getContextPath()+"/recipe/recipeList.rc?page=1");
		return forward;
	}

}
