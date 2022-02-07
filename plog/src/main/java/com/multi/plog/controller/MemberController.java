package com.multi.plog.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import com.multi.plog.model.MemberVO;
import com.multi.plog.service.MemberService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {
    @Autowired
	MemberService service;
    
	// 로그인 폼으로 이동
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "/member/loginForm";
	}

    @ResponseBody
	@RequestMapping("/login")
	public String loginCheck(@RequestParam HashMap<String, Object> param,
											   HttpSession session) {
		
		// 로그인 체크 결과
		MemberVO vo = service.loginCheck(param);
		String result = "fail";
		
		if(vo != null) {
			//로그인 성공하면 세션 변수 지정
			session.setAttribute("sid", vo.getMem_id());
			result = "success";
		}
		
		return result;
	}

    // 회원가입 폼으로 이동
	@RequestMapping("/joinForm")
	public String joinForm() {
		return "/member/joinForm";
	}

    // 로그아웃
    @RequestMapping("/logout")
	   public String logout(HttpSession session) {
	      session.invalidate();
	      return "redirect:/";
	}
    
    // 아이디 중복 체크
    @ResponseBody
	@RequestMapping("/memIdCheck")
	public String memIdCheck(@RequestParam String memId) {
	
		String memId_result=service.memIdCheck(memId);  
		String result="use";
		System.out.println(memId_result);
		if(memId_result == null) { 
			result="no_use";
		}else result="use";
		
		return result;
	}

	// 회원가입
    @RequestMapping("/member/insertMember")
	public String insertMember(MemberVO vo) {
		service.insertMember(vo);
		return "redirect:/";
	}

    // 탈퇴 폼으로 이동
	@RequestMapping("/memDeleteForm")
	public String memDeleteForm() {
		return "/member/memDeleteForm";
	}

	// 회원탈퇴
	@ResponseBody
	@RequestMapping("/member/memberDelete")
	public int memberDelete(MemberVO vo, HttpSession session)
	{
		int result = service.memberDelete(vo);
		if(result != 0){
			session.invalidate();
			return result;
		}else{
			return 0;
		}
		
	}
	
	@RequestMapping("/memUpdateForm/{memId}")
	public String memberInfo(@PathVariable String memId, Model model) {
		
		MemberVO mem = service.memberInfo(memId);
		model.addAttribute("mem", mem);
		
		return "member/memUpdateForm";
	}
	
	// 정보 수정 : 수정된 정보 DB에 저장
	@RequestMapping("/member/memberUpdate")
	public String memberUpdate(MemberVO memId) {
		service.memberUpdate(memId);		
		return "redirect:/";
	}
	
	@RequestMapping("/consentForm")
	public String consentForm() {
		return "/member/consentForm";
	}
}
