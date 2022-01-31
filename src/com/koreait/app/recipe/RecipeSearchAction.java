package com.koreait.app.recipe;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.recipe.dao.Criteria;
import com.koreait.app.recipe.dao.RecipeDAO;

public class RecipeSearchAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		Criteria cri = new Criteria();
		RecipeDAO rdao = new RecipeDAO();
		System.out.println("searchAction 들어옴");
		String keyword = request.getParameter("keyword");
		/*int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		int amount = Integer.parseInt(request.getParameter("amount"));*/
		cri.setKeyword(keyword);
		/*cri.setAmount(amount);
		cri.setPageNum(pageNum);*/
		request.setAttribute("cri", cri);
		String temp = request.getParameter("page");
		
		int page = temp==null?1:Integer.parseInt(temp);
		
		int pagesize = 9;
		int totalCnt = rdao.getRecipeCnt();
		
		//10 : 한 페이지에 띄워줄 "게시글" 개수
		int endRow = page*9;
		int startRow = endRow-8;
		
		int startPage = ((page-1)/pagesize)*pagesize + 1;
		int endPage = startPage+(pagesize-1);
		int totalPage = (totalCnt-1)/pagesize +1; 
		endPage = endPage>totalPage?totalPage:endPage;
		System.out.println("전송전");
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("totalCnt", totalCnt);
		request.setAttribute("nowPage", page);
		request.setAttribute("startPage",startPage);
		request.setAttribute("endPage", endPage);
		/*request.setAttribute("recipeList", rdao.getRecipeList(startRow,endRow));*/
		request.setAttribute("recipeList", rdao.getListWithPaging(cri));
		
		/*rdao.getTotal(cri);*/
		/*rdao.getListWithPaging(cri);*/
		
		forward.setPath("/app/board/searchView.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
