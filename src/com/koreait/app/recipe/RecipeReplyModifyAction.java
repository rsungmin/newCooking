package com.koreait.app.recipe;

import java.util.Enumeration;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.recipe.dao.ReplyBean;
import com.koreait.app.recipe.dao.ReplyDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class RecipeReplyModifyAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
	      response.setCharacterEncoding("UTF-8");
	      ActionForward forward = new ActionForward();
	      ReplyDAO rdao = new ReplyDAO();
	      ReplyBean reply = new ReplyBean();
	      
	     String filePath = "E:\\WEB\\JSP\\workspace\\project1\\WebContent\\app\\upload";
		  int fileSize = 5 * 1024 * 1024;
	      
	      MultipartRequest mul = new MultipartRequest(request, filePath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		  Enumeration<String> files = mul.getFileNames();
			
	      int reply_num = Integer.parseInt(mul.getParameter("reply_num"));
	      int rc_num = Integer.parseInt(mul.getParameter("rc_num"));
	    
	      String i = mul.getParameter("num");
	      System.out.println("i :"+i);
	     
	      String reply_contents = mul.getParameter("reply_contents"+i);
	      System.out.println("reply_Contents: "+reply_contents);
	      /*String reply_file_name = mul.getParameter("reply_file_name");*/

		  /*Cookie[] cookies = request.getCookies();		
		  String cookieValue= rdao.getCookieValue(cookies, "joinid");
		  reply.setMember_id(cookieValue);
	      reply.setRc_num(rc_num);*/
	     /* reply.setReply_contents(reply_contents);
	      reply.setReply_num(reply_num);*/
	     /* reply.setReply_file_name(reply_file_name);*/
	      rdao.updateReply(reply_num, reply_contents);
	      
	      
	      
	      forward.setRedirect(true);
	      forward.setPath(request.getContextPath()+"/recipe/recipeView.re?rc_num="+rc_num);
	      return forward;
	   }

	}


