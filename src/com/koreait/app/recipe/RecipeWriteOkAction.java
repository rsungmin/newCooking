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

public class RecipeWriteOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
ActionForward forward = new ActionForward();
		
		RecipeDAO rdao = new RecipeDAO();
		RecipeBean recipe = new RecipeBean();
		
		String filePath = "D:\\Web\\workspace\\newCooking\\WebContent\\app\\upload";
//		String filePath = "../app/upload";
		int fileSize = 5 * 1024 * 1024;
		boolean rcheck1 = false;
		//boolean scheck2 = false;
		//boolean icheck3 = false;
		
		MultipartRequest mul = new MultipartRequest(request, filePath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		Enumeration<String> files = mul.getFileNames();
		System.out.println("files = " + files);
		//recipe 
		recipe.setRc_title((mul.getParameter("rc_title")));
		recipe.setRc_contents((mul.getParameter("rc_contents")));
		recipe.setRc_cate((mul.getParameter("rc_cate")));
		recipe.setRc_info((mul.getParameter("rc_info")));
		recipe.setRc_time((mul.getParameter("rc_time")));
		recipe.setRc_dif((mul.getParameter("rc_dif")));
		recipe.setRc_file_title(mul.getFilesystemName(files.nextElement()));
		/*recipe.setSt_step(mul.getParameter("st_step"));*/
		recipe.setSt_content(mul.getParameter("st_content"));
		/*recipe.setSt_tip(mul.getParameter("st_tip"));*/
/*		recipe.setSt_file_name(mul.getFilesystemName(files.nextElement()));*/
		recipe.setIn_name(mul.getParameter("in_name"));
		/*recipe.setIn_amount(mul.getParameter("in_amount"));*/
		
		rcheck1 = rdao.insertRecipe(recipe);
		
		if(rcheck1) {
			forward.setRedirect(true);
			forward.setPath(request.getContextPath()+"/recipe/recipeList.rc?page=1");			
		}
		
		return forward;
	}

}
