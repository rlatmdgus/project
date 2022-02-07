package com.multi.plog.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.multi.plog.model.PostVO;

public interface IPostService {


	ArrayList<PostVO> listAllPost();   
	void insertPost(PostVO vo);
	void deletePost(String post_no);
	ArrayList<PostVO> postSearch(HashMap<String,Object> map);//상품 검색
}
