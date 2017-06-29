package kr.co.hdmetal.Login;

import java.util.List;
import java.util.Map;

import kr.co.hdmetal.VO.MemberVO;

public interface LoginService {

	MemberVO logincheck(Map<String, Object> map);
	List<MemberVO> join(Map<String, Object> map);
	List<MemberVO> join_list();
	MemberVO joinedit(String edit_id);
	int join_idcheck(String join_idcheck);
	void memberdelete(MemberVO mVo, String sel_op);
}
