package com.koreait.app.recipe;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.recipe.dao.RecipeBean;
import com.koreait.app.recipe.dao.RecipeDAO;

public class RecipeLikeAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		RecipeDAO rdao = new RecipeDAO();
		RecipeBean recipe = new RecipeBean();
		
		System.out.println("RecipeLikeAction 들어옴");
		HashMap<String, Object> datas = new HashMap<>();
		datas.put("rc_num", Integer.parseInt(request.getParameter("rc_num")));
		datas.put("member_id", request.getParameter("member_id"));		
		System.out.println("RecipeLikeAction rc_num : "+Integer.parseInt(request.getParameter("rc_num")));
		System.out.println("RecipeLikeAction member_id : "+request.getParameter("member_id"));
		
		int result = rdao.recCheck(datas);
		if(result == 0){ // 추천하지 않았다면 추천 추가
			rdao.recUpdate(datas);
			rdao.updateLikeCnt(Integer.parseInt(request.getParameter("rc_num")));
		}else{ // 추천을 하였다면 추천 삭제
			rdao.recDelete(datas);
		}
		return null;
	}

}
