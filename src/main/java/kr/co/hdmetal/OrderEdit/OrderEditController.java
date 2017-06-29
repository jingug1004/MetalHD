package kr.co.hdmetal.OrderEdit;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import kr.co.hdmetal.VO.HdInsertVO;
import kr.co.hdmetal.VO.HdProductsVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OrderEditController {
	// ====================================================
	@Autowired
	private OrderEditService orderEditService;

	@Autowired
	public void setOrderEditService(OrderEditService orderEditService) {
		this.orderEditService = orderEditService;
	}
	// ====================================================

	@RequestMapping(value = "/orderEdit")
	public ModelAndView orderEdit(ModelAndView mav) {
		mav.addObject("list", orderEditService.selectListAll());
		mav.setViewName("order/orderEdit");
		return mav;
	}

	@RequestMapping(value = "/orderEditView")
	public ModelAndView orderEditDetail(@RequestParam("num") String num,
			ModelAndView mav) {
		mav.addObject("detail", orderEditService.selectOneByNum(num));
		mav.addObject("products", orderEditService.selectProductsByNum(num));
		mav.addObject("loglog", orderEditService.loglog(num));
		mav.addObject("comment", orderEditService.comment(num));
		
		mav.setViewName("order/orderEditView");
		return mav;
	}

	@RequestMapping(value = "/orderEditDetail")
	public ModelAndView orderEditView(@RequestParam("num") String num,
			ModelAndView mav) {
		mav.addObject("detail", orderEditService.selectOneByNum(num));
		mav.addObject("products", orderEditService.selectProductsByNum(num));
		mav.addObject("loglog", orderEditService.loglog(num));
		mav.addObject("comment", orderEditService.comment(num));
		System.out.println(orderEditService.comment(num));
		mav.setViewName("order/orderEditDetail");
		return mav;
	}

	@RequestMapping(value = "/orderUpdate")
	public @ResponseBody void orderUpdate(
			@RequestParam HashMap<String, Object> map, HdProductsVO row,
			HdInsertVO vo,HttpSession session) {

		vo.setOrder_Num((String) map.get("info[order_Num]"));
		vo.setOrder_Date((String) map.get("info[order_Date]"));
		vo.setRequest_Date((String) map.get("info[request_Date]"));
		vo.setOrder_Name((String) map.get("info[order_Name]"));
		vo.setManager_Name((String) map.get("info[manager_Name]"));

		vo.setManager_Tel((String) map.get("info[manager_Tel]"));
		vo.setContract_Name((String) map.get("info[contract_Name]"));
		vo.setSales((String) map.get("info[sales]"));
		vo.setConsignee_Location((String) map.get("info[consignee_Location]"));
		vo.setConsignee_Rank((String) map.get("info[consignee_Rank]"));

		vo.setConsignee_Name((String) map.get("info[consignee_Name]"));
		vo.setConsignee_Tel((String) map.get("info[consignee_Tel]"));
		vo.setDispatcher_Weight((String) map.get("info[dispatcher_Weight]"));
		vo.setDispatcher_Company((String) map.get("info[dispatcher_Company]"));
		vo.setDispatcher_No((String) map.get("info[dispatcher_No]"));

		vo.setDispatcher_Type((String) map.get("info[dispatcher_Type]"));
		vo.setDispatcher_Tel((String) map.get("info[dispatcher_Tel]"));
		vo.setDispatcher_Fare(Integer.parseInt((String) map
				.get("info[dispatcher_Fare]")));
		vo.setOrder_delegate_Name((String) map.get("info[order_delegate_Name]"));
		vo.setRequest_Expected((String) map.get("info[request_Expected]"));

		vo.setProduction_Date((String) map.get("info[production_Date]"));
		vo.setP_Date((String) map.get("info[p_Date]"));
		vo.setOrder_States((String) map.get("info[order_States]"));
		vo.setOrder_tel((String) map.get("info[order_tel]"));
		vo.setProduction_Remark((String) map.get("info[production_Remark]"));

		vo.setOrder_Location((String) map.get("info[order_Location]"));
		vo.setLog_Remark((String) map.get("info[log_Remark]"));
		vo.setLog_Logininfo((String) map.get("info[log_Logininfo]"));
		vo.setOrder_comment((String) map.get("info[order_comment]"));
		// vo.setTotal_Price((String) map.get("info[total_Price]"));
		orderEditService.updateInfo(vo);

		int x = (map.size() - 30) / 12;
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
			row.setProducts_seq(Integer.parseInt((String) map
					.get("rows[value][" + i + "][products_seq]")));
			orderEditService.updateList(row);	
		}		
	}

	@RequestMapping(value = "/orderDelete")
	public @ResponseBody void orderDelete(
			@RequestParam HashMap<String, Object> map, HdProductsVO row) {
		int x = (map.size() - 3);
		for (int i = 0; i < x; i++) {
			row.setOrder_num((String) map.get("info[order_Num]"));
			row.setProducts_seq(Integer.parseInt((String) map
					.get("rows[value][" + i + "][products_seq]")));
			orderEditService.orderDelete(row);
		}

	}

}