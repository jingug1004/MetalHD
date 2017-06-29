package kr.co.hdmetal.OrderEdit;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.hdmetal.VO.HDAlldataVO;
import kr.co.hdmetal.VO.HdCommentVO;
import kr.co.hdmetal.VO.HdInsertVO;
import kr.co.hdmetal.VO.HdProductsVO;

@Repository
public class OrderEditDAO {
	// ====================================================
	@Autowired
	private SqlSession sqlSession;

	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	// ====================================================

	public HdInsertVO selectOneByNum(String num) {
		return sqlSession.selectOne("orderEdit.selectOneByNum", num);
	}

	public List<HDAlldataVO> selectListAll() {
		return sqlSession.selectList("orderEdit.selectListAll");
	}
	
	public List<HdProductsVO> selectProductsByNum(String num) {
		return sqlSession.selectList("orderEdit.selectProductsByNum", num);
	}

	public void updateInfo(HdInsertVO vo) {
		sqlSession.update("orderEdit.updateProduction", vo);
		sqlSession.update("orderEdit.updateConsignee", vo);
		sqlSession.update("orderEdit.updateDispatcher", vo);
		sqlSession.update("orderEdit.updateManagerinfo", vo);
		sqlSession.update("orderEdit.updateOrderCompany", vo);
		sqlSession.insert("orderEdit.updateUpdateLog", vo);
		sqlSession.selectList("orderEdit.commentprocessing", vo);

	}

	public void updateList(HdProductsVO vo) {
		sqlSession.update("orderEdit.mergeList", vo);
	}

	public void orderDelete(HdProductsVO vo) {
		sqlSession.update("orderEdit.orderDelete", vo);
	}

	public List<HdInsertVO> loglog(String num) {
		return sqlSession.selectList("orderEdit.loglog", num);
	}

	public List<HdCommentVO> comment(String num) {
		return sqlSession.selectList("orderEdit.comment", num);
	}

	

}
