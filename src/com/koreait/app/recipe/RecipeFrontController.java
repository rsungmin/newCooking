package com.koreait.app.recipe;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;

@WebServlet("*.rc")
public class RecipeFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String requestURI = request.getRequestURI();
			String contextPath = request.getContextPath();
			String command = requestURI.substring(contextPath.length());
			ActionForward forward = null;
			
			
		      int lastIndex = requestURI.lastIndexOf("/") + 1;
		      String requestPage = requestURI.substring(lastIndex); //reqestPage : list.re
		     
		      System.out.println("rewquestURI : " + requestURI);
		      System.out.println("contextPath : " + contextPath);
		      System.out.println("reqestPage :" + requestPage);
		      System.out.println("command : " + command);
		      
			if(command.equals("/recipe/recipeList.rc")) {
				try {
					forward = new RecipeListAction().execute(request, response);
				} catch (Exception e) {
					System.out.println("/recipe/RecipeList 오류");
					System.out.println(e);
					e.printStackTrace();
					
				}
			/*}else if(command.equals("/recipe/recipeList.rc")) {
				try {
					forward = new RecipeListAction().execute(request,response);
				} catch (Exception e) {
					System.out.println("/recipe/recipeList 오류");
					System.out.println(e);
					e.printStackTrace();
				}*/
			}else if(command.equals("/recipe/recipeView.rc")) {
				try {
					forward = new RecipeViewAction().execute(request,response);					
				} catch (Exception e) {
					e.printStackTrace();
					System.out.println("recipe/recipeView 오류");
					System.out.println(e);
				}
			}else if(command.equals("/recipe/recipeReplyOk.rc")){
				try {
					forward = new RecipeReplyOkAction().execute(request, response);
				} catch (Exception e) {
					System.out.println("/recipe/recipeReplyOk 오류");
					System.out.println(e);
					e.printStackTrace();
				}
			}else if(command.equals("/recipe/recipeReplyList.rc")) {
				try {
					forward = new RecipeReplyListAction().execute(request, response);
				} catch (Exception e) {
					System.out.println("/recipe/recipeReplyList 오류");
					System.out.println(e);
					e.printStackTrace();
				}
			}
			else  if(command.equals("/recipe/recipeReplyModify.rc")){
				try {
					forward = new RecipeReplyModifyAction().execute(request, response);
				} catch (Exception e) {
					System.out.println("/recipe/recipeReplyModify 오류");
					System.out.println("e: "+e);
					e.printStackTrace();
			
				}
			}else if(command.equals("/recipe/RecipeWriteOk.rc")) {
				try {
					forward = new RecipeWriteOkAction().execute(request, response);
				} catch (Exception e) {
					e.printStackTrace();
					System.out.println("/recipe/RecipeWriteOk 오류");
				}
			}else  if(command.equals("/recipe/recipeReplyDelete.rc")) {
				try {
					forward = new RecipeReplyDeleteAction().execute(request, response);
				} catch (Exception e) {
					System.out.println("/recipe/recipeReplyDelete 오류");
					System.out.println(e);
					e.printStackTrace();
				}
			}else if(command.equals("/recipe/recipeSearch.rc")) {
				try {
					forward = new RecipeSearchAction().execute(request, response);
				} catch (Exception e) {
					System.out.println("/recipe/recipeSearch 오류");
					System.out.println(e);
					e.printStackTrace();
				}
			}
			System.out.println("controller forward: "+forward);
			
			if(forward!=null) {
				if(forward.isRedirect()) {
					response.sendRedirect(forward.getPath());
				}else {
					RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
					dispatcher.forward(request, response);
				}
			}
			
	}
}

