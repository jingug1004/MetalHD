package kr.co.hdmetal.OrderInsert;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.hdmetal.VO.HdInsertVO;
import kr.co.hdmetal.VO.HdProductsVO;

@Controller
public class OrderInsertController {
	// ====================================================
	@Autowired
	private OrderInsertService orderInsertService;

	@Autowired
	public void setOrderInsertService(OrderInsertService orderInsertService) {
		this.orderInsertService = orderInsertService;
	}
	// ====================================================

	@RequestMapping(value = "/orderInsert2")
	public String orderInsert() {
		return "order/orderInsert";
	}

	@RequestMapping(value = "/orderInsert")
	public ModelAndView orderInsert(ModelAndView mav) {
		int num = orderInsertService.selectNum();
//		int num = 01;
		mav.addObject("service", num);
		mav.setViewName("order/orderInsert");
		return mav;
	}

	@RequestMapping(value = "/orderInsertTest")
	public ModelAndView orderInsertTest(ModelAndView mav) {
		int num = orderInsertService.selectNum();
		mav.addObject("order_num_count", num);
		mav.setViewName("order/orderInsert_Two");
		return mav;
	}

	// 선택 값 가져오기
	@RequestMapping(value = "/orderGetSelect")
	@ResponseBody
	public Object orderGetSelect(@RequestParam Map<String, Object> map) {

		List<?> getData = (List<?>) orderInsertService.getSelect(map);

		map.put("ocList", getData);
		map.put("code", "OK");

		return map;
	}

	// 회사 정보 가져오기
	@RequestMapping(value = "/getOCData")
	@ResponseBody
	public Object getOCData(@RequestParam("order_name") String order_name) {

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("OCData", orderInsertService.getOCData(order_name));
		map.put("code", "OK");

		return map;
	}

	@RequestMapping(value = "/orderInsertAll", method = RequestMethod.POST)
	public @ResponseBody void orderInsertAll(
			@RequestParam HashMap<String, Object> map, HdProductsVO row,
			HdInsertVO vo) {
		//		Calendar calendar = Calendar.getInstance();
		//		SimpleDateFormat dateFormat = new SimpleDateFormat(" HH:mm:ss");
		//		String time = dateFormat.format(calendar.getTime());

		vo.setOrder_Num((String) map.get("info[order_Num]")==null ? " " :(String) map.get("info[order_Num]") );
		vo.setOrder_Date((String) map.get("info[order_Date]")==null ? " " : (String) map.get("info[order_Date]"));
		vo.setRequest_Date((String) map.get("info[request_Date]")==null ? " " : (String) map.get("info[request_Date]"));
		vo.setOrder_Name((String) map.get("info[order_Name]")==null ? " " : (String) map.get("info[order_Name]"));
		vo.setManager_Name((String) map.get("info[manager_Name]")==null ? " " : (String) map.get("info[manager_Name]"));

		vo.setManager_Tel((String) map.get("info[manager_Tel]")==null ? " " : (String) map.get("info[manager_Tel]"));
		vo.setContract_Name((String) map.get("info[contract_Name]")==null ? " " : (String) map.get("info[contract_Name]"));
		vo.setSales((String) map.get("info[sales]")==null ? " " : (String) map.get("info[sales]"));
		vo.setConsignee_Location((String) map.get("info[consignee_Location]")==null ? " " : (String) map.get("info[consignee_Location]"));
		vo.setConsignee_Rank((String) map.get("info[consignee_Rank]")==null ? " " : (String) map.get("info[consignee_Rank]"));

		vo.setConsignee_Name((String) map.get("info[consignee_Name]")==null ? " " : (String) map.get("info[consignee_Name]"));
		vo.setConsignee_Tel((String) map.get("info[consignee_Tel]")==null ? " " : (String) map.get("info[consignee_Tel]"));
		vo.setDispatcher_Weight((String) map.get("info[dispatcher_Weight]")==null ? " " : (String) map.get("info[dispatcher_Weight]"));
		vo.setDispatcher_Company((String) map.get("info[dispatcher_Company]")==null ? " " : (String) map.get("info[dispatcher_Company]"));
		vo.setDispatcher_No((String) map.get("info[dispatcher_No]")==null ? " " : (String) map.get("info[dispatcher_No]"));

		vo.setDispatcher_Type((String) map.get("info[dispatcher_Type]")==null ? " " : (String) map.get("info[dispatcher_Type]"));
		vo.setDispatcher_Tel((String) map.get("info[dispatcher_Tel]")==null ? " " : (String) map.get("info[dispatcher_Tel]"));
		vo.setDispatcher_Fare(Integer.parseInt((String) map.get("info[dispatcher_Fare]")==null ? " " : (String) map.get("info[dispatcher_Fare]")));
		vo.setOrder_delegate_Name((String) map.get("info[order_delegate_Name]")==null ? " " : (String) map.get("info[order_delegate_Name]"));
		vo.setRequest_Expected((String) map.get("info[request_Expected]")==null ? " " : (String) map.get("info[request_Expected]"));

		vo.setProduction_Date((String) map.get("info[production_Date]")==null ? " " : (String) map.get("info[production_Date]"));
		vo.setP_Date((String) map.get("info[p_Date]")==null ? " " : (String) map.get("info[p_Date]"));
		vo.setOrder_States((String) map.get("info[order_States]")==null ? " " : (String) map.get("info[order_States]"));
		vo.setOrder_tel((String) map.get("info[order_tel]")==null ? " " : (String) map.get("info[order_tel]"));
		vo.setProduction_Remark((String) map.get("info[production_Remark]")==null ? " " : (String) map.get("info[production_Remark]"));

		vo.setOrder_Location((String) map.get("info[order_Location]")==null ? " " : (String) map.get("info[order_Location]"));
		vo.setLog_Remark((String) map.get("info[log_Remark]")==null ? " " : (String) map.get("info[log_Remark]"));
		vo.setLog_Logininfo((String) map.get("info[log_Logininfo]")==null ? " " : (String) map.get("info[log_Logininfo]"));
		// vo.setTotal_Price((String) map.get("info[total_Price]"));
		orderInsertService.insertInfo(vo);

		int x = ((map.size() - 30) / 7);
		System.out.println(map.size());
		for (int i = 0; i < x; i++) {
			row.setOrder_num((String) map.get("info[order_Num]"));
			row.setOrder_item((String) map.get("rows[value][" + i + "][order_Item]")==null ? " " : (String) map.get("rows[value][" + i + "][order_Item]"));
			row.setItem((String) map.get("rows[value][" + i + "][item]")==null ? " " : (String) map.get("rows[value][" + i + "][item]"));
			row.setSize_l((String) map.get("rows[value][" + i + "][size_L]")==null ? " " : (String) map.get("rows[value][" + i + "][size_L]"));
			row.setSize_s((String) map.get("rows[value][" + i + "][size_S]")==null ? " " : (String) map.get("rows[value][" + i + "][size_S]"));
			row.setSize_t((String) map.get("rows[value][" + i + "][size_T]")==null ? " " : (String) map.get("rows[value][" + i + "][size_T]"));
			row.setSize_p((String) map.get("rows[value][" + i + "][size_P]")==null ? " " : (String) map.get("rows[value][" + i + "][size_P]"));
			row.setSize_m((String) map.get("rows[value][" + i + "][size_M]")==null ? " " : (String) map.get("rows[value][" + i + "][size_M]"));
			row.setVolume((String) map.get("rows[value][" + i + "][volume]")==null ? " " : (String) map.get("rows[value][" + i + "][volume]"));
			row.setPrice((String) map.get("rows[value][" + i + "][price]")==null ? " " : (String) map.get("rows[value][" + i + "][price]"));
			row.setProducts_remark((String) map.get("rows[value][" + i + "][products_Remark]")==null ? " " : (String) map.get("rows[value][" + i + "][products_Remark]"));
			row.setLot_no((String) map.get("rows[value][" + i + "][lot_No]")==null ? " " : (String) map.get("rows[value][" + i + "][lot_No]"));
			orderInsertService.insertList(row);
		}

	}

	@RequestMapping(value = "/insertFromEdit", method = RequestMethod.POST)
	public @ResponseBody void insertFromEdit(
			@RequestParam HashMap<String, Object> map, HdProductsVO row) {
		int x = (map.size() - 3) / 11;
		for (int i = 0; i < x; i++) {
			row.setOrder_num((String) map.get("info[order_Num]"));
			row.setOrder_item((String) map.get("rows[value][" + i
					+ "][order_Item]"));
			row.setItem((String) map.get("rows[value][" + i + "][item]"));
			row.setSize_l((String) map.get("rows[value][" + i + "][size_L]"));
			row.setSize_s((String) map.get("rows[value][" + i + "][size_S]"));
			row.setSize_t((String) map.get("rows[value][" + i + "][size_T]"));
			row.setSize_p((String) map.get("rows[value][" + i + "][size_P]"));
			row.setSize_m((String) map.get("rows[value][" + i + "][size_M]"));
			row.setVolume((String) map.get("rows[value][" + i + "][volume]"));
			row.setPrice((String) map.get("rows[value][" + i + "][price]"));
			row.setProducts_remark((String) map.get("rows[value][" + i
					+ "][products_Remark]"));
			row.setLot_no((String) map.get("rows[value][" + i + "][lot_No]"));
			orderInsertService.insertList(row);
		}
	}

}
