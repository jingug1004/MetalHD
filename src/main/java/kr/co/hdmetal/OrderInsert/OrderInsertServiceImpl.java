package kr.co.hdmetal.OrderInsert;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hdmetal.VO.HdInsertVO;
import kr.co.hdmetal.VO.HdProductsVO;

@Service
public class OrderInsertServiceImpl implements OrderInsertService {
	// ====================================================
	@Autowired
	private OrderInsertDAO orderInsertDAO;

	@Autowired
	public void setOrderInsertDAO(OrderInsertDAO orderInsertDAO) {
		this.orderInsertDAO = orderInsertDAO;
	}
	// ====================================================

		@Override
		public void insertInfo(HdInsertVO vo) {
			orderInsertDAO.insertInfo(vo);
		}
	
		@Override
		public void insertList(HdProductsVO vo) {
			orderInsertDAO.insertList(vo);
		}

	@Override
	public int selectNum() {
		return orderInsertDAO.selectNum();
	}

	@Override
	public Object getSelect(Map<String, Object> map) {
		return orderInsertDAO.getSelect(map);
	}

	@Override
	public Object getOCData(String order_name) {
		return orderInsertDAO.getOCData(order_name);
	}

}
