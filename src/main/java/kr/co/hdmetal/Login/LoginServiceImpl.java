package kr.co.hdmetal.Login;

import java.util.List;
import java.util.Map;

import kr.co.hdmetal.VO.MemberVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService{
	// ====================================================
	@Autowired
	private LoginDAO loginDAO;

	@Autowired
	public void setLoginDAO(LoginDAO loginDAO) {
		this.loginDAO = loginDAO;
	}
	// ====================================================
	@Override
	public MemberVO logincheck(Map<String, Object> map){
		return loginDAO.logincheck(map);
	}
	@Override
	public List join(Map<String, Object> map){
		return loginDAO.join(map);
	}
	@Override
	public int join_idcheck(String join_idcheck){
		return loginDAO.join_idcheck(join_idcheck);
	}
	@Override
	public List<MemberVO> join_list(){
		return loginDAO.join_list();
	}
	@Override
	public MemberVO joinedit(String edit_id){
		return loginDAO.joinedit(edit_id);
	}
	@Override
	public void memberdelete(MemberVO mVo, String sel_op) {
		loginDAO.memberdelete(mVo,sel_op);
		
	}
	
}
