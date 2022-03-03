package com.koreait.app.recipe.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.mybatis.config.SqlMapConfig;

public class RecipeDAO {
	SqlSessionFactory sqlfactory = SqlMapConfig.getInstance();
	SqlSession sqlsession;
	
	public RecipeDAO() {
		sqlsession=sqlfactory.openSession(true);
	}
	
//	레시피등록
	public boolean insertRecipe(RecipeBean recipe) {
		return sqlsession.insert("Recipe.insertRecipe",recipe)==1;		
	}
	
//	레시피수정
	public boolean updateRecipe(RecipeBean recipe) { 
		System.out.println("RecipeDAO recipe = " + recipe);
		System.out.println(sqlsession.update("Recipe.updateRecipe",recipe) == 1);
		return sqlsession.update("Recipe.updateRecipe",recipe) == 1;
	}
	
//	레시피삭제
	public void deleteRecipe(int rc_num) {
		sqlsession.delete("Recipe.deleteRecipe",rc_num);
	}
	
//	전체 게시글 수
	public int recipedCnt() {
		return sqlsession.selectOne("Recipe.recipedCnt");
	}
	
//	검색
	public List<RecipeBean> getListWithPaging(Criteria cri) {
		return sqlsession.selectList("Recipe.getListWithPaging", cri);		
	}
	
	public int getTotal(Criteria cri) {
		return sqlsession.selectOne("Recipe.getTotal");
		
	}
	
//	상세보기
	public RecipeBean getDetail(int rc_num) {
		return sqlsession.selectOne("Recipe.getDetail",rc_num);
	}
	
//	조회수 증가
	public void updateViewCnt(int rc_num) {
		sqlsession.update("Recipe.updateViewCnt",rc_num);
	}

//	좋아요 수 증가
	public void updateLikeCnt(int rc_num) {
		sqlsession.update("Recipe.updateLikeCnt",rc_num);
	}
	
	public int getRecipeCnt() {
		return sqlsession.selectOne("Recipe.RecipeCnt");
	}

//	리스트 가져오기
	public List<RecipeBean> getRecipeList(int startRow, int endRow) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		List<RecipeBean> recipeList =sqlsession.selectList("Recipe.listAll", datas);
		return recipeList;
	}
	
//	한식 리스트 가져오기
	public List<RecipeBean> getRecipeListKor(int startRow, int endRow){
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		List<RecipeBean> recipeList = sqlsession.selectList("Recipe.listKor", datas);
		return recipeList;
	}
//	메인 리스트 가져오기
	public List<RecipeBean> getRecipeListMain(){
		List<RecipeBean> recipeList=sqlsession.selectList("Recipe.listMain");
		return recipeList;
	}
//	게시글 추천여부 검사
	public int recCheck(HashMap<String, Object> datas) {
		int result=0;
		result = (Integer) sqlsession.selectOne("Recipe.recCheck", datas);		
		return result;
	}
	
//	게시글 추천
	public void recUpdate(HashMap<String, Object> datas) {
		sqlsession.insert("Recipe.recUpdate",datas);		
	}
	
//	게시글 추천 제거
	public void recDelete(HashMap<String, Object> datas) {
		sqlsession.insert("Recipe.recDelete", datas);
		
	}

//	게시글 추천수
	public int recCount(int rc_num) {
		int count=0;
		count = (Integer)sqlsession.selectOne("Recipe.recCount",rc_num);
		return count;
	}
}
