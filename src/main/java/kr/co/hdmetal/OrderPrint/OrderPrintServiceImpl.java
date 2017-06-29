package kr.co.hdmetal.OrderPrint;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderPrintServiceImpl implements OrderPrintService{
	// ====================================================
	@Autowired
	private OrderPrintDAO orderPrintDAO;

	@Autowired
	public void setOrderPrintDAO(OrderPrintDAO orderPrintDAO) {
		this.orderPrintDAO = orderPrintDAO;
	}
	// ====================================================
	
	
}
