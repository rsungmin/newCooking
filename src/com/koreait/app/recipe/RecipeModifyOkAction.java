package com.koreait.app.recipe;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.recipe.dao.RecipeBean;
import com.koreait.app.recipe.dao.RecipeDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class RecipeModifyOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		RecipeDAO rdao = new RecipeDAO();
		RecipeBean recipe = new RecipeBean();
		
		String filePath = "D:\\Web\\workspace\\newCooking\\WebContent\\app\\upload";
		int fileSize = 5 * 1024 * 1024;
		 
		//boolean check=true;
		
		//MultipartRequest mul = new MultipartRequest(request, filePath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		//Enumeration<String> files = mul.getFileNames();
		
		//int rc_num = Integer.parseInt(request.getParameter("rc_num"));
		String rcnum = request.getParameter("rc_num");
		/*System.out.println("rcnum : "+rcnum);
		if(rcnum==null) {
			rcnum="1";
		}*/
		int rc_num = Integer.parseInt(rcnum);
		System.out.println("RecipeModifyOkAction rc_num : "+rc_num);
		recipe.setRc_num(rc_num);
		recipe.setRc_title((request.getParameter("rc_title")));
		recipe.setRc_contents((request.getParameter("rc_contents")));
		recipe.setRc_cate((request.getParameter("rc_cate")));
		recipe.setRc_info((request.getParameter("rc_info")));
		recipe.setRc_time((request.getParameter("rc_time")));
		recipe.setRc_dif((request.getParameter("rc_dif")));
		recipe.setRc_file_title((request.getParameter("rc_file_title")));
		//recipe.setRc_file_title(mul.getFilesystemName(files.nextElement()));
		recipe.setSt_content(request.getParameter("st_content"));
		recipe.setIn_name(request.getParameter("in_name"));
		
		rdao.updateRecipe(recipe);
		
		System.out.println("RecipeModifyOk recipe: "+recipe);
		/*check=rdao.updateRecipe(recipe);
		System.out.println("check : "+check);*/
		
//		if(check) {
//			request.setAttribute("recipe", recipe);
//			forward.setRedirect(false);
//			forward.setPath("/app/recipe/recipeView.jsp?rc_num="+rc_num);	
//			return forward;
//		}else {
//			System.out.println("update 실패");
//		}
		
		forward.setRedirect(true);
		forward.setPath(request.getContextPath()+"/recipe/recipeView.rc?rc_num="+rc_num);		
		return forward;
	}

}
