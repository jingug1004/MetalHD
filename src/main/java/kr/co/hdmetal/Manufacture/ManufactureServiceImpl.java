package kr.co.hdmetal.Manufacture;

import java.util.List;
import java.util.Map;

import kr.co.hdmetal.VO.HDAlldataVO;
import kr.co.hdmetal.VO.HdProductionVO;
import kr.co.hdmetal.VO.HdstockVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManufactureServiceImpl implements ManufactureService {
	// ====================================================
	@Autowired
	private ManufactureDAO manufactureDAO;

	@Autowired
	public void setManufactureEditDAO(ManufactureDAO manufactureDAO) {
		this.manufactureDAO = manufactureDAO;
	}
	// ====================================================

	@Override
	public List<HdProductionVO> List() {
		return manufactureDAO.List();
	}

	@Override
	public List<HDAlldataVO> allList(Map<String, Object> map) {
		return manufactureDAO.allList(map);
	}

	@Override
	public List<HdProductionVO> ListSort(Map<String, Object> map) {
		return manufactureDAO.ListSort(map);
	}

	@Override
	public List<HDAlldataVO> detailed_information(Map<String, Object> map) {
		return manufactureDAO.detailed_information(map);
	}

	@Override
	public java.util.List<HDAlldataVO> list_print(Map<String, Object> map) {
		return manufactureDAO.list_print(map);
	}
	@Override
	public List<HdstockVO> stocklist(){
		return manufactureDAO.stocklist();
	}
	@Override
	public List<HdstockVO> stockinsert(HdstockVO vo){
		return  manufactureDAO.stocklist(vo);
	}

	@Override
	public String stockdelete(String item) {
		return manufactureDAO.stockdelete(item);
	}

	@Override
	public void updateInventory(HdstockVO vo) {
		manufactureDAO.updateInventory(vo);
	}

//	@Override
//	public Object dbdelete(String order_num) {
//		return manufactureDAO.dbdelete(order_num);
//		
//	}

	@Override
	public Object dbdelete(String order_num, String deltbllist) {
		// TODO Auto-generated method stub
		return manufactureDAO.dbdelete(order_num,deltbllist);
	}

}
