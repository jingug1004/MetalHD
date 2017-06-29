package kr.co.hdmetal.Manufacture;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.hdmetal.VO.HdstockVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/manufacture")
public class ManufactureController {
	// ====================================================
	@Autowired
	private ManufactureService manufactureService;

	@Autowired
	public void setManufactureEditService(ManufactureService manufactureService) {
		this.manufactureService = manufactureService;
	}

	// ====================================================

	String sortSave = "", sortlavel = "";

	@RequestMapping(value = "search_list")
	public ModelAndView search_list(ModelAndView mav,
			@RequestParam Map<String, Object> map) {

		String sort = "";

		if (map.get("clickinfo") != null)
			sort = (String) map.get("clickinfo");

		if (sortSave == "") {
			sortSave = sort;
			sortlavel = "desc";
		} else if (sortlavel.equalsIgnoreCase("asc")
				&& sortSave.equalsIgnoreCase(sort)) {
			sortlavel = "desc";
		} else if (sortlavel.equalsIgnoreCase("desc")
				&& sortSave.equalsIgnoreCase(sort)) {
			sortlavel = "asc";
		} else if (sortSave != sort) {
			sortSave = sort;
			sortlavel = "desc";
		}

		if (map.get("sortName") == null) {
			map.put("sort", sortlavel.toUpperCase());
			map.put("sortName", sortSave.toUpperCase());
		}

		mav.addObject("manufactureAlllist", manufactureService.allList(map));
		mav.addObject("companyname", manufactureService.List());
		mav.addObject("Data", map);
		mav.setViewName("manufacture/manufactureEdit");

		return mav;
	}
	@RequestMapping(value = "search_list_print")
	public ModelAndView search_list_print(ModelAndView mav,
			@RequestParam Map<String, Object> map) {

		String sort = "";

		if (map.get("clickinfo") != null)
			sort = (String) map.get("clickinfo");

		if (sortSave == "") {
			sortSave = sort;
			sortlavel = "desc";
		} else if (sortlavel.equalsIgnoreCase("asc")
				&& sortSave.equalsIgnoreCase(sort)) {
			sortlavel = "desc";
		} else if (sortlavel.equalsIgnoreCase("desc")
				&& sortSave.equalsIgnoreCase(sort)) {
			sortlavel = "asc";
		} else if (sortSave != sort) {
			sortSave = sort;
			sortlavel = "desc";
		}

		if (map.get("sortName") == null) {
			map.put("sort", sortlavel.toUpperCase());
			map.put("sortName", sortSave.toUpperCase());
		}

		mav.addObject("manufactureAlllist", manufactureService.list_print(map));
		mav.addObject("companyname", manufactureService.List());
		mav.addObject("sortData", map);
		mav.setViewName("manufacture/manufacturePrint");

		return mav;
	}

	@RequestMapping(value = "/sortAndSearch")
	@ResponseBody
	public Object sortAndSeach(@RequestParam Map<String, Object> map) {

		List<?> list = manufactureService.detailed_information(map);
		List<?> companyname = manufactureService.List();

		map.put("manufactureAlllist", list);
		map.put("companyname", companyname);
		map.put("CODE", "OK");
		return map;
	}

	@RequestMapping(value = "/list_sorting")
	public ModelAndView list_sorting(ModelAndView mav,
			@RequestParam("sort") String sort) {
		if (sortSave == "") {
			sortSave = sort;
			sortlavel = "desc";
		} else if (sortlavel.equalsIgnoreCase("asc")
				&& sortSave.equalsIgnoreCase(sort)) {
			sortlavel = "desc";
		} else if (sortlavel.equalsIgnoreCase("desc")
				&& sortSave.equalsIgnoreCase(sort)) {
			sortlavel = "asc";
		} else if (sortSave != sort) {
			sortSave = sort;
			sortlavel = "desc";
		}

		Map<String, Object> data = new HashMap<String, Object>();

		data.put("sort", sortlavel.toUpperCase());
		data.put("sortName", sortSave.toUpperCase());

		mav.addObject("manufactureAlllist", manufactureService.allList(data));
		mav.addObject("companyname", manufactureService.List());
		mav.addObject("Data", data);
		mav.setViewName("manufacture/manufactureEdit");
		return mav;
	}

	@RequestMapping(value = "/insert")
	public ModelAndView manufactureEdit(ModelAndView mav) {

		Map<String, Object> data = new HashMap<String, Object>();
		mav.addObject("manufactureAlllist", manufactureService.allList(data));
		mav.addObject("companyname", manufactureService.List());
		mav.setViewName("manufacture/manufactureEdit");
		return mav;
	}

	@RequestMapping(value = "/detailed_information")
	public ModelAndView manufacture_detailed_information(ModelAndView mav,
			@RequestParam("order_num") String order_num,
			@RequestParam("sort") String sort) {
		if (sortSave == "") {
			sortSave = sort;
			sortlavel = "desc";
		} else if (sortlavel.equalsIgnoreCase("asc")
				&& sortSave.equalsIgnoreCase(sort)) {
			sortlavel = "desc";
		} else if (sortlavel.equalsIgnoreCase("desc")
				&& sortSave.equalsIgnoreCase(sort)) {
			sortlavel = "asc";
		} else if (sortSave != sort) {
			sortSave = sort;
			sortlavel = "desc";
		}

		Map<String, Object> data = new HashMap<String, Object>();

		data.put("sort", sortlavel.toUpperCase());
		data.put("sortName", sortSave.toUpperCase());
		data.put("order_num", order_num);

		mav.addObject("detailed_information",
				manufactureService.detailed_information(data));
		mav.addObject("sortData", data);
		mav.setViewName("manufacture/manufactureEditer");
		return mav;
	}

	@RequestMapping("/showInputPanel")
	public String showInputPanel() {
		return "manufacture/manufactureStockInsert";
	}

	@RequestMapping(value = "/print")
	public ModelAndView manufacturePrint(ModelAndView mav) {
		Map<String, Object> data = new HashMap<String, Object>();
		mav.addObject("manufactureAlllist",
				manufactureService.detailed_information(data));
		mav.addObject("companyname", manufactureService.List());
		mav.setViewName("manufacture/manufacturePrint");
		return mav;
	}
	
	//���� ���ʹ� ����
	@RequestMapping(value = "/edit")
	public ModelAndView manufactureStock(ModelAndView mav) {
		mav.addObject("stoklist",manufactureService.stocklist());
		mav.setViewName("manufacture/manufactureStock");
		return mav;
	}
	
	@RequestMapping(value = "/stockinsert")
	@ResponseBody
	public int stockinsert(@RequestParam Map<String, Object> map,HdstockVO vo ){
		int check = 1;
		try{
		vo.setItem((String)map.get("value[srow][item]"));
		vo.setSize_l((String)map.get("value[srow][scale_l]"));
		vo.setSize_m((String)map.get("value[srow][scale_m]"));
		vo.setSize_p((String)map.get("value[srow][scale_p]"));
		vo.setSize_s((String)map.get("value[srow][scale_s]"));
		vo.setSize_t((String)map.get("value[srow][scale_t]"));
		vo.setVolume((String)map.get("value[srow][volume]"));
		manufactureService.stockinsert(vo);
		}catch(Exception e){
			e.printStackTrace();
			
		}
		return check;
		
	}
	
	@RequestMapping(value = "/stockdelete")
	@ResponseBody
	public String stockdelete(@RequestParam Map<String, Object> map, String item){
		try{
		item = (String)map.get("value[srow][item]");
		manufactureService.stockdelete(item);		
		}catch(Exception e){
			e.printStackTrace();
			
		}
		
		return item;
	}
	
	@RequestMapping(value = "/updateInventory")
	@ResponseBody
	public void updateInventory(@RequestParam Map<String, Object> map,HdstockVO vo ){
		try{
		vo.setItem((String)map.get("value[srow][item]"));
		vo.setSize_l((String)map.get("value[srow][scale_l]"));
		vo.setSize_m((String)map.get("value[srow][scale_m]"));
		vo.setSize_p((String)map.get("value[srow][scale_p]"));
		vo.setSize_s((String)map.get("value[srow][scale_s]"));
		vo.setSize_t((String)map.get("value[srow][scale_t]"));
		vo.setVolume((String)map.get("value[srow][volume]"));
		manufactureService.updateInventory(vo);
		}catch(Exception e){
			e.printStackTrace();
			
		}
		
	}
	
	@RequestMapping(value="/srowchkprint")
	public ModelAndView srowchkprint(ModelAndView mav,@RequestParam Map<String, Object> map){
		mav.addObject("chkprint",map);
		System.out.println(mav.toString());
		mav.setViewName("manufacture/manufacturePrintChk");
		return mav;
	}
	
	//주문 삭제
	@RequestMapping(value="/dbdelete")
	@ResponseBody
	public Object dbdelete(@RequestParam Map<String, Object> map, String order_num){
		
		String [] deltbllist={"comment","consignee","dispatcher","managerinfo","production","products","updatelog","order_company"};
		order_num = (String)map.get("value[srow][order_num]");
		try{
			for(int i = 0 ; i < deltbllist.length ; i++){
				
				manufactureService.dbdelete(order_num,deltbllist[i]);
			}
//			order_num = (String)map.get("value[srow][order_num]");
//		System.out.println(order_num);
//		manufactureService.dbdelete(order_num);		
		}catch(Exception e){
			e.printStackTrace();
			
		}
		
		return order_num;
	}
	
}
