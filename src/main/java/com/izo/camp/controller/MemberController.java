package com.izo.camp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.izo.camp.member.MemberService;
import com.izo.camp.vo.MemberVO;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	
	//약관동의 페이지로 이동
	@RequestMapping("/term.do")
	public String term(MemberVO vo, Model model) {
		model.addAttribute("vo", vo);
		return "join/term";
	}
	
	//가입확인 페이지로 이동
	@RequestMapping("/memberCheck.do")
	public String memberCheck() {
		return "join/memberCheck";
	}
		
	//회원가입 유무확인 페이지 -> 회원가입 페이지
	@RequestMapping("/joinView.do")
	public String joinView(MemberVO vo, Model model) {
		model.addAttribute("vo", vo);
		return "join/joinView";
	}
	
	//로그인 페이지 -> 회원가입 페이지
		@RequestMapping("/joinView2.do")
		public String joinView() {
			return "join/joinView";
		}
	
	//주소찾기 이동
	@RequestMapping("/jusoPopup.do")
	public String jusoPopup() {
		return "join/jusoPopup";
	}
	
	//아이디중복확인
	@RequestMapping("checkID.do")
	@ResponseBody
	public String checkId(@ModelAttribute("id") String id) {		
		int idx = memberService.idIdx(id);		
		System.out.println(idx);		
		String param = "n";		
		if(idx > 0) {
			param = "y";
		}		
		String result = String.format("[{'param':'%s'}]", param);				
		return result;
	}
	
	//회원가입하기
	@ResponseBody
	@RequestMapping("/join.do")
	public String join(MemberVO vo) {
		int cnt = memberService.insertInfo(vo);
		System.out.println(cnt);
		String param = "n";
		if(cnt > 0) {
			param = "y";
		}
		String result = String.format("[{'param':'%s'}]", param);
		return result;
	}
	
	//회원가입 유무 확인
	@ResponseBody
	@RequestMapping("/memberOrNot.do")
	public String search(MemberVO vo) {		
		int idx = memberService.getMemberIdx(vo);		
		String param = "n";		
		if(idx > 0) {
			param = "y";
		}		
		String result = String.format("[{'param':'%s'}]", param);		
		return result;
	}
	
	
	//로그인페이지로 이동
	@RequestMapping(value="/loginView.do")
	public String loginView() {
		return "login/loginView";
	}
		
	//로그인하기
	@ResponseBody
	//ajax로 post형식 데이터 주고 받을 때 produces = "application/text; charset=UTF-8", method=RequestMethod.POST 붙이기!
	@RequestMapping(value="/goLogin.do", produces = "application/text; charset=UTF-8", method=RequestMethod.POST)
	public String goLogin(MemberVO vo) {		
		int idx = memberService.getIdxFromId(vo);		
		int param = 0;	
		String name = "none";
		if(idx > 0) {
			param = idx;
			MemberVO vo1 = memberService.userInfo(idx);
			name = vo1.getName();
		}		
		System.out.println("로그인버튼 클릭시 접속자 이름: " +name);
		String result = String.format("[{'param':'%d'}, {'name':'%s'}]", param, name);		
		return result;
	}
	
	//아이디찾기 페이지로 이동
	@RequestMapping("/findMyID.do")
	public String findMyID() {
		return "login/findMyID";
	}
	
	//아이디 찾기 팝업창으로 이동
	@RequestMapping("/searchIDView.do")
	public String searchIDView() {
		return "login/findMyID";
	}
	
	//아이디찾기
	@ResponseBody
	@RequestMapping("/searchID.do")
	public String searchID(MemberVO vo) {
		String result = String.format("[{'id':'%s'}]", memberService.searchID(vo)); 
		return result;		
	}
	
	//비밀번호 찾기 팝업창으로 이동
	@RequestMapping("/searchPwdView.do")
	public String searchPwdView() {
		return "login/findMyPWD";
	}
	
	//비밀번호 찾기
	@ResponseBody
	@RequestMapping("/searchPwd.do")
	public String searchPwd(MemberVO vo) {
		int idx1 = memberService.idIdx(vo.getId());
		int idx2 = memberService.getMemberIdx(vo);
		System.out.println("idx1 : "+idx1+"/ idx2 : "+idx2);
		int idx = 0;
		if(idx1 == idx2) {
			if(idx1!=0 ||idx2!=0) {
				idx = idx1;
			}else {
				idx = 0;
			}
		}else {
			idx = 0;
		}
		System.out.println(idx);
		String result = String.format("[{'idx':'%d'}]", idx);
		return result;
	}
	
	//비밀번호 변경하기
	@ResponseBody
	@RequestMapping("/changePwd.do")
	public String changePwd(MemberVO vo) {
		int cnt = memberService.changePwd(vo);
		System.out.println("컨트롤러 결과 : "+cnt);
		String param = "n";
		if(cnt > 0) {
			param = "y";
		}
		String result = String.format("[{'param':'%s'}]", param);
		return result;
	}
}
