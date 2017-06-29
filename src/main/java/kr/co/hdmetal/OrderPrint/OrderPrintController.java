package kr.co.hdmetal.OrderPrint;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderPrintController {
	// ====================================================
	@Autowired
	private OrderPrintService orderPrintService;

	@Autowired
	public void OrderPrintService(OrderPrintService orderPrintService) {
		this.orderPrintService = orderPrintService;
	}
	// ====================================================

	@RequestMapping(value = "/orderPrint")
	public String orderPrint() {
		return "order/orderPrint";
	}
}
