package com.multi.plog.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.multi.plog.dao.IMemberDAO;
import com.multi.plog.model.MemberVO;

@Service
public class MemberService implements IMemberService {

	@Autowired
	@Qualifier("IMemberDAO")
	IMemberDAO dao;
	
	@Override
	public void insertMember(MemberVO vo) {
		dao.insertMember(vo);
	}

	@Override
	public MemberVO loginCheck(HashMap<String, Object> map) {
		return dao.loginCheck(map);
	}

	@Override
	public String memIdCheck(String memId) {
		return dao.memIdCheck(memId);
	}

	@Override
	public int memberDelete(MemberVO vo) {
		
		return dao.memberDelete(vo);
	}

	@Override
	public void memberUpdate(MemberVO vo) {
		
		dao.memberUpdate(vo);
	}

	@Override
	public MemberVO memberInfo(String memId) {
		return dao.memberInfo(memId);
	}
}
