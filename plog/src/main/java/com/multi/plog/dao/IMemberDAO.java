package com.multi.plog.dao;

import java.util.HashMap;

import com.multi.plog.model.MemberVO;



public interface IMemberDAO {
	
	void insertMember(MemberVO vo);
	MemberVO loginCheck(HashMap<String, Object> map);
	String memIdCheck(String memId);
	int memberDelete(MemberVO vo);
	void memberUpdate(MemberVO vo);
	MemberVO memberInfo(String memId);
}
