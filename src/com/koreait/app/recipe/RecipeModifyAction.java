package com.koreait.app.recipe;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.recipe.dao.RecipeBean;
import com.koreait.app.recipe.dao.RecipeDAO;

public class RecipeModifyAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();		
		RecipeBean recipe = new RecipeBean();
		RecipeDAO rdao = new RecipeDAO();
		
		//int rc_num = Integer.parseInt(request.getParameter("rc_num"));	
		String rcnum = request.getParameter("rc_num");
		System.out.println("rcnum : "+rcnum);
		if(rcnum==null) {
			rcnum="1";
		}
		int rc_num = Integer.parseInt(rcnum);
		System.out.println("RecipeModifyAction rc_num : "+rc_num);
		recipe = rdao.getDetail(rc_num);		
			request.setAttribute("recipe", recipe);												
			forward.setRedirect(false);
			forward.setPath("/app/recipe/recipeModify.jsp?rc_num"+rc_num);
			return forward;
		
	
		/*request.setAttribute("recipe", recipe);
		System.out.println("RecipeModifyAction recipe : " + recipe);
*/
	
	}

}
