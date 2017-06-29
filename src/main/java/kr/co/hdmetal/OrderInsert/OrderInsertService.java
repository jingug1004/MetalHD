package kr.co.hdmetal.OrderInsert;

import java.util.Map;

import kr.co.hdmetal.VO.HdInsertVO;
import kr.co.hdmetal.VO.HdProductsVO;

public interface OrderInsertService {
	void insertInfo(HdInsertVO vo);

	void insertList(HdProductsVO vo);

	int selectNum();

	Object getSelect(Map<String, Object> map);

	Object getOCData(String order_name);

}
