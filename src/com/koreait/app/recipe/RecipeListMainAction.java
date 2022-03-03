package com.koreait.app.recipe;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.recipe.dao.RecipeBean;
import com.koreait.app.recipe.dao.RecipeDAO;

public class RecipeListMainAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		RecipeDAO rdao = new RecipeDAO();
		RecipeBean recipe = new RecipeBean();
		ActionForward forward = new ActionForward();

		List<RecipeBean> recipeList = rdao.getRecipeListMain();
		request.setAttribute("recipe", recipe);
		request.setAttribute("recipeList", recipeList);
		System.out.println("set 완료");

		System.out.println("RecipeListMain recipe : "+recipe);
		System.out.println("RecipeListMain recipeList : "+recipeList);
		System.out.println("recipeList.size() : "+recipeList.size());
		
		
		
		PrintWriter out = response.getWriter();
		if(recipe != null && recipeList != null) {	
			//out.println(recipe);
			//out.print(recipeList);
			out.println("$(\"#one\").html(\"mainList.jsp\")");

		}
		out.close();
		
		return forward;

	}
}
