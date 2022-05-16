package main.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import main.service.MemberService;
import main.service.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Resource(name="memberDAO")
	public MemberDAO memberDAO;
	
	@Override //다형성(오버라이딩,오버로딩)
	public String insertMember(MemberVO vo) throws Exception {
		return memberDAO.insertMember(vo);
	}

	@Override
	public int selectMemberIdCheck(String userid) throws Exception {
		return memberDAO.selectMemberIdCheck(userid);
	}

	@Override
	public List<?> selectPostList(String dong) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.serlectPostList(dong);
	}

	@Override
	public int selectMemberCount(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.selectMemberCount(vo);
	}

}
