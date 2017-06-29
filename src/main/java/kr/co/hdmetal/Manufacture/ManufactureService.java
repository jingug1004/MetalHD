package kr.co.hdmetal.Manufacture;

import java.util.List;
import java.util.Map;

import kr.co.hdmetal.VO.HDAlldataVO;
import kr.co.hdmetal.VO.HdProductionVO;
import kr.co.hdmetal.VO.HdstockVO;

public interface ManufactureService {

	List<HDAlldataVO> allList(Map<String, Object> map);
	List<HdProductionVO> List();
	List<HdProductionVO> ListSort(Map<String, Object> map);
	List<HDAlldataVO> detailed_information(Map<String, Object> map);
	List<HDAlldataVO> list_print(Map<String, Object> map);
	List<HdstockVO> stocklist();
	List<HdstockVO> stockinsert(HdstockVO vo);
	String stockdelete(String item);
	void updateInventory(HdstockVO vo);
	Object dbdelete(String order_num, String deltbllist);

}
