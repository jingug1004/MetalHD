package kr.co.hdmetal.Login;

import java.util.List;
import java.util.Map;

import kr.co.hdmetal.VO.MemberVO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDAO {
	// ====================================================
	@Autowired
	private SqlSession sqlSession;

	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	// ====================================================
	public MemberVO logincheck(Map<String, Object> map ){
		return sqlSession.selectOne("login.logincheck",map);
	}
	public List<MemberVO> join(Map<String, Object> map){
		return sqlSession.selectList("login.join",map);
	}
	public int join_idcheck(String join_idcheck){
		return sqlSession.selectOne("login.join_idcheck",join_idcheck);
	}
	public List<MemberVO> join_list(){
		return sqlSession.selectList("login.join_list");
	}
	public MemberVO joinedit(String edit_id){
		return sqlSession.selectOne("login.join_edit",edit_id);
	}
	public void memberdelete(MemberVO mVo, String sel_op) {
		if(sel_op.equals("deletebtn")){			
			sqlSession.selectOne("login.member_delete",mVo);
		
		}else{
		sqlSession.selectList("login.memeber_update",mVo);
		}
	}
	
}
