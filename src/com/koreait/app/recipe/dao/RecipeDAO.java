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
		return sqlsession.update("Recipe.updateRecipe",recipe)==1;
	}
	
//	레시피삭제
	public void deleteRecipe(int rc_num) {
		sqlsession.delete("Recipe.deleteRecipe",rc_num);
	}
	
//	전체 게시글 수
	public int recipedCnt() {
		return sqlsession.selectOne("Recipe.recipedCnt");
	}
	
//	 리스트 보여주기  
	public List<RecipeBean> listAll(int startRow, int endRow ) {
		return sqlsession.selectList("Recipe.listAll");
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

	public int getRecipeCnt() {
		return sqlsession.selectOne("Recipe.RecipeCnt");
	}

	public List<RecipeBean> getRecipeList(int startRow, int endRow) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		List<RecipeBean> recipeList =sqlsession.selectList("Recipe.listAll", datas);
		return recipeList;
	}

}
