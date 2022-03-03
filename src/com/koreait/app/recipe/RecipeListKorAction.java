package com.koreait.app.recipe;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialException;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.recipe.dao.RecipeBean;
import com.koreait.app.recipe.dao.RecipeDAO;

public class RecipeListKorAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws SerialException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		RecipeDAO rdao = new RecipeDAO();
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		
		
		String temp = request.getParameter("page");
		int page = temp==null?1:Integer.parseInt(temp);			
		System.out.println("temp: "+temp);		
		System.out.println("page: "+page);
		
		int pagesize = 9;
		int totalCnt = rdao.getRecipeCnt();
		
		
		int endRow = page*9;
		int startRow = endRow-8;
		
		int startPage = ((page-1)/pagesize)*pagesize + 1;
		int endPage = startPage+(pagesize-1);
		int totalPage = (totalCnt-1)/pagesize +1; 
		endPage = endPage>totalPage?totalPage:endPage;
		
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("totalCnt", totalCnt);
		request.setAttribute("nowPage", page);
		request.setAttribute("startPage",startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("recipeList", rdao.getRecipeListKor(startRow, endRow));
		
		
		System.out.println("totalPage : " + totalPage);
		System.out.println("totalCnt : "+totalCnt );
		System.out.println("startRow " + startRow);
		System.out.println("endRow " + endRow);
		
		String recipe = request.getParameter("recipe");
		System.out.println("recipe: "+recipe);
		PrintWriter out = response.getWriter();
		if(recipe != null) {
			System.out.println("ㅇㅋ");
			out.println("ok");
		}else {
			out.println("not-ok");
		}
		
		forward.setRedirect(false);
		/*forward.setPath("/main.jsp");*/
		forward.setPath("/app/recipe/recipeListKor.jsp?page="+page);
		return forward;
		
		
	}
}