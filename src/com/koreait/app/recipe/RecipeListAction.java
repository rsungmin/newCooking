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
import com.koreait.app.recipe.dao.RecipeDAO;

public class RecipeListAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws SerialException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		RecipeDAO rdao = new RecipeDAO();
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		
		
		
		String temp = request.getParameter("page");
		System.out.println("temp: "+temp);
		int page = temp==null?1:Integer.parseInt(temp);
		System.out.println("page: "+page);
		int pagesize = 9;
		int totalCnt = rdao.getRecipeCnt();
		
		//10 : �븳 �럹�씠吏��뿉 �쓣�썙以� "寃뚯떆湲�" 媛쒖닔
		int endRow = page*9;
		int startRow = endRow-8;
		
		int startPage = ((page-1)/pagesize)*pagesize + 1;
		int endPage = startPage+(pagesize-1);
		int totalPage = (totalCnt-1)/pagesize +1; 
		endPage = endPage>totalPage?totalPage:endPage;
		System.out.println("�쟾�넚�쟾");
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("totalCnt", totalCnt);
		request.setAttribute("nowPage", page);
		request.setAttribute("startPage",startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("recipeList", rdao.getRecipeList(startRow,endRow));
		//recipeList �씪�뒗 attribute�뿉 rdao由ъ뒪�듃瑜� �떞�뒗�떎
		System.out.println("total : " + totalPage);
		System.out.println("start " + startRow);
		System.out.println("end " + endRow);
		
		String recipe = request.getParameter("recipe");
		PrintWriter out = response.getWriter();
		if(recipe != null) {
			System.out.println("ㅇㅋ");
			out.println("ok");
		}else {
			out.println("not-ok");
		}
		
		forward.setRedirect(false);
		forward.setPath("/main.jsp");
		return forward;
		
		
	}
}