package com.koreait.app.member.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import com.koreait.mybatis.config.SqlMapConfig;

public class MemberDAO {
	SqlSessionFactory sqlfactory= SqlMapConfig.getInstance();
	SqlSession sqlsession = null;
	
	public MemberDAO() {
		sqlsession = sqlfactory.openSession(true);
	}
	
	private static MemberDAO instance;
	
	public static MemberDAO getInstance() {
		if(instance==null)
			instance = new MemberDAO();
		return instance;
	}
	
	public boolean join(MemberBean member) {
		return 1 == sqlsession.insert("Member.join", member);
	}
	
	public MemberBean login(String member_id, String member_pw) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("member_id", member_id);
		datas.put("member_pw", member_pw);
		MemberBean member = (MemberBean)sqlsession.selectOne("Member.login", datas);
		return member;
	}
	
	public boolean checkId(String member_id) {
		return 0 == (Integer)sqlsession.selectOne("Member.checkId",member_id);
	}
	
	
	
	public MemberBean getDetail(int member_num) {
		return sqlsession.selectOne("Member.getDetail",member_num);
	}
}
