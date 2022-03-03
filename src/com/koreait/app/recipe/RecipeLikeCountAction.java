package com.koreait.app.recipe;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.recipe.dao.RecipeDAO;

public class RecipeLikeCountAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		RecipeDAO rdao = new RecipeDAO();
		PrintWriter out = response.getWriter();
		System.out.println("RecipeLikeCountAction 들어옴");
		int rc_num = Integer.parseInt(request.getParameter("rc_num"));
		int count = rdao.recCount(rc_num);
		
		out.print(count);
		return null;
	}

}
