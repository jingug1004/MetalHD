package kr.co.hdmetal.OrderEdit;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hdmetal.VO.HDAlldataVO;
import kr.co.hdmetal.VO.HdCommentVO;
import kr.co.hdmetal.VO.HdInsertVO;
import kr.co.hdmetal.VO.HdProductsVO;

@Service
public class OrderEditServiceImpl implements OrderEditService{
	// ====================================================
	@Autowired
	private OrderEditDAO orderEditDAO;

	@Autowired
	public void setOrderEditDAO(OrderEditDAO orderEditDAO) {
		this.orderEditDAO = orderEditDAO;
	}
	// ====================================================

	@Override
	public HdInsertVO selectOneByNum(String num) {
		// TODO Auto-generated method stub
		return orderEditDAO.selectOneByNum(num);
	}

	@Override
	public List<HDAlldataVO> selectListAll() {
		// TODO Auto-generated method stub
		return orderEditDAO.selectListAll();
	}
	
	@Override
	public List<HdProductsVO> selectProductsByNum(String num) {
		// TODO Auto-generated method stub
		return orderEditDAO.selectProductsByNum(num);
	}

	@Override
	public void updateInfo(HdInsertVO vo) {
		// TODO Auto-generated method stub
		orderEditDAO.updateInfo(vo);
	}

	@Override
	public void updateList(HdProductsVO vo) {
		// TODO Auto-generated method stub
		orderEditDAO.updateList(vo);
	}

	@Override
	public void orderDelete(HdProductsVO vo) {
		// TODO Auto-generated method stub
		orderEditDAO.orderDelete(vo);
	}
	@Override
	public List<HdInsertVO>loglog(String num){
		return orderEditDAO.loglog(num);
	}
	
	@Override
	public List<HdCommentVO> comment(String num) {
		return orderEditDAO.comment(num);
	}
	


}
