package com.multi.plog.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.multi.plog.dao.IPostDAO;
import com.multi.plog.model.PostVO;

@Service
public class PostService implements IPostService {

	
	@Autowired
	@Qualifier("IPostDAO")
	IPostDAO dao;
	
	
	@Override
	public ArrayList<PostVO> listAllPost() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertPost(PostVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deletePost(String post_no) {
		// TODO Auto-generated method stub

	}

	@Override
	public ArrayList<PostVO> postSearch(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

}
