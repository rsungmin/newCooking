package com.koreait.app.recipe.dao;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Cookie;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.mybatis.config.SqlMapConfig;

public class ReplyDAO {
	SqlSessionFactory sqlfactory = SqlMapConfig.getInstance();
	SqlSession sqlsession;
	
	public ReplyDAO() {
		sqlsession=sqlfactory.openSession(true);
	}
	
//	댓글등록
	public boolean insertReply(ReplyBean reply) {
		return sqlsession.insert("Recipe.insertReply",reply)==1;
	}
	
//	댓글수정
	public void updateReply(int reply_num, String reply_contents) {
		HashMap<String, Object> datas = new HashMap<>();
		datas.put("reply_num", reply_num);
		datas.put("reply_contents", reply_contents);
		sqlsession.update("Recipe.updateReply",datas);
	}
/*	public void updateReply(ReplyBean reply) {
		sqlsession.update("Recipe.updateReply",reply);
	}*/
	
//	댓글삭제
	public void deleteReply(int reply_num) {
		sqlsession.delete("Recipe.deleteReply",reply_num);
	}
	
//	댓글리스트
	public List<ReplyBean> getReply(int rc_num) {
		List<ReplyBean> reply = sqlsession.selectList("Recipe.getReply",rc_num);
		return reply;
	}
	
//	쿠키불러오기
	public String getCookieValue(Cookie[] cookies, String name){
		if(cookies == null){
			return null;
		}
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals(name)){
				return cookie.getValue();
			}
		}
		return null;
	}



}