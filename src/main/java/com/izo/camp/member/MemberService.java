package com.izo.camp.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.izo.camp.mapper.MemberMapper;
import com.izo.camp.vo.MemberVO;

@Service
public class MemberService {
	//function
	
	@Autowired
	MemberMapper memberMapper;
	
	//회원 전체목록
	public List<MemberVO> list(){
		return memberMapper.list();
	}
	
	//회원 한명 정보 조회
	public MemberVO userInfo(int idx){
		MemberVO vo = memberMapper.userInfo(idx);
		System.out.println(vo.getName());
		return memberMapper.userInfo(idx);
	}
	
	//아이디 idx 찾기
	public int idIdx(String id) {
		return memberMapper.idIdx(id);
	}
	
//	컨트롤러 -> 서비스 : 메서드명(변수)의 변수는 컨트롤러에서 보낸 타입과 일치
//  매퍼 -> 서비스  : 리턴과 메서드 타입 일치
	//이름, 이메일 일치하는 idx
	public int getMemberIdx(MemberVO vo){		
		return memberMapper.memberIdx(vo);
	}
	
	//아이디, 비번 일치하는 idx
	public int getIdxFromId(MemberVO vo) {
		return memberMapper.memberIdxFromId(vo);
	}
	
	//회원정보 추가하기
	public int insertInfo(MemberVO vo) {
		return memberMapper.insertInfo(vo);
	}
	
	//아이디 찾기
	public String searchID(MemberVO vo) {
		return memberMapper.searchID(vo);
	}
	
	//비밀번호 변경하기
	public int changePwd(MemberVO vo) {
		System.out.println(memberMapper.changePwd(vo));
		return memberMapper.changePwd(vo);
	}
	
}
