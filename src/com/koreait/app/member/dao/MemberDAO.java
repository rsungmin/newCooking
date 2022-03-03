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
	
	//회원가입
	public boolean join(MemberBean member) {
		return 1 == sqlsession.insert("Member.join", member);
	}
	
	//로그인
	public MemberBean login(String member_id, String member_pw) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("member_id", member_id);
		datas.put("member_pw", member_pw);
		MemberBean member = (MemberBean)sqlsession.selectOne("Member.login", datas);
		return member;
	}
	
	//아이디 찾기
	public MemberBean findId(String member_name, String member_phone) {
		System.out.println("DAO 들어옴");
		HashMap<String, String> datas = new HashMap<>();
		datas.put("member_name", member_name);
		datas.put("member_phone", member_phone);
		MemberBean member=(MemberBean)sqlsession.selectOne("Member.findId", datas);
		System.out.println("DAO member : "+member);
		return member;
	}
	
	//비밀번호 찾기
	public MemberBean findPw(String member_id, String member_phone) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("member_id", member_id);
		datas.put("member_phone", member_phone);
		MemberBean member=(MemberBean)sqlsession.selectOne("Member.findPw", datas);
		return member;
	}
	
	//체크아이디
	public boolean checkId(String member_id) {
		return 0 == (Integer)sqlsession.selectOne("Member.checkId",member_id);
	}	
		
	//회원정보보기
	public MemberBean getDetail(String member_id) {
		return sqlsession.selectOne("Member.getDetail",member_id);
	}
	
	//비밀번호 수정
	public boolean updatePw(MemberBean member) {		
		return sqlsession.update("Member.updatePw",member)==1;
	}
	
	//이메일 수정
	public boolean updateEmail(MemberBean member) {		
		return sqlsession.update("Member.updateEmail",member)==1;
	}
	
	//연락처 수정
	public boolean updatePhone(MemberBean member) {		
		return sqlsession.update("Member.updatePhone",member)==1;
	}
	
	//회원탈퇴
	public void deleteMember(String member_id) {
		sqlsession.delete("Member.deleteMember", member_id);
	}

}
