package kr.co.hdmetal.Manufacture;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.hdmetal.VO.HDAlldataVO;
import kr.co.hdmetal.VO.HdProductionVO;
import kr.co.hdmetal.VO.HdstockVO;

@Repository
public class ManufactureDAO {
	@Autowired
	private SqlSession sqlSession;

	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public List<HdProductionVO> List() {
		return sqlSession.selectList("manufacture.List");
	}

	public List<HDAlldataVO> allList(Map<String, Object> map) {
		return sqlSession.selectList("manufacture.allList", map);
	}

	public List<HdProductionVO> ListSort(Map<String, Object> map) {
		return sqlSession.selectList("manufacture.ListSort", map);
	}

	public List<HDAlldataVO> detailed_information(String order_num) {
		return sqlSession.selectList("manufacture.detailed_information",
				order_num);
	}
	public List<HDAlldataVO> detailed_information(Map<String, Object> map) {
		return sqlSession.selectList("manufacture.detailed_information", map);
	}
	public List<HDAlldataVO> list_print(Map<String, Object> map) {
		return sqlSession.selectList("manufacture.allList_print", map);
	}

	public List<HdstockVO> stocklist() {
		return sqlSession.selectList("manufacture.stocklist");
	}

	public List<HdstockVO> stocklist(HdstockVO vo) {
	
		return  sqlSession.selectList("manufacture.stockinsert", vo);

	}

	public String stockdelete(String item) { 
		sqlSession.delete("manufacture.stockdelete", item);
		return item;	
	}
	
	public void updateInventory(HdstockVO vo) {
		sqlSession.update("manufacture.updateInventory", vo);
	}

	public Object dbdelete(String order_num, String deltbllist) {
		
		Map map = new HashMap();
		map.put("order_num", order_num);
		map.put("deltbllist", "hd_"+deltbllist);
		System.out.println("List : " + deltbllist+ ", Item : "+order_num);
		sqlSession.delete("manufacture.dbdelete", map);
		return order_num;
	}
}
