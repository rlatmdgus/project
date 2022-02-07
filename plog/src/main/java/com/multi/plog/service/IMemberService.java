package com.multi.plog.service;

import java.util.HashMap;

import com.multi.plog.model.MemberVO;

public interface IMemberService {

	void insertMember(MemberVO vo);
	MemberVO loginCheck(HashMap<String, Object> map);
	String memIdCheck(String memId);
	int memberDelete(MemberVO vo);
	void memberUpdate(MemberVO vo);
	MemberVO memberInfo(String memId);
}
