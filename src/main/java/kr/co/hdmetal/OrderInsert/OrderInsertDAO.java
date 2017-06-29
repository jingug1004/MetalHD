package kr.co.hdmetal.OrderInsert;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import kr.co.hdmetal.VO.HdInsertVO;
import kr.co.hdmetal.VO.HdProductsVO;

@Repository
public class OrderInsertDAO {
	// ====================================================
	@Autowired
	private SqlSession sqlSession;

	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	// ====================================================

	public void insertInfo(HdInsertVO vo) {
		sqlSession.insert("orderInsert.insertProduction", vo);
		sqlSession.insert("orderInsert.insertConsignee", vo);
		sqlSession.insert("orderInsert.insertDispatcher", vo);
		sqlSession.insert("orderInsert.insertManagerinfo", vo);
		sqlSession.insert("orderInsert.insertOrderCompany", vo);
		sqlSession.insert("orderInsert.insertUpdateLog", vo);
	}

	public void insertList(HdProductsVO vo) {
		sqlSession.insert("orderInsert.insertList", vo);
	}

	public int selectNum() {
		return sqlSession.selectOne("orderInsert.selectNum");
	}

	public Object getSelect(Map<String, Object> map) {
		return sqlSession.selectList("orderInsert.getSelect", map);
	}

	public Object getOCData(String order_name) {
		return sqlSession.selectList("orderInsert.getOC", order_name);
	}

}
