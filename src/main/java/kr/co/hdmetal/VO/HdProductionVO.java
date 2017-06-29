package kr.co.hdmetal.VO;

//��ǰ �ֹ� ����
public class HdProductionVO {

	private Integer production_Seq;

	//  �ֹ� ��ȣ(������)
	private String order_Num;

	//  ����
	private String contract_Name;

	//  �������
	private String sales;

	//  ��ȣ
	private String order_Name;

	//  �����
	private String manager_Name;

	//  ��ǰ��û��
	private String request_Date;

	//  ���꿹����
	private String production_Date;

	//  ��ǰ�Ϸ�
	private String order_States;

	//  ����� ���ǻ���
	private String production_Remark;

	//  ����ҿ���
	private String p_Date;

	//  �ѱݾ�
	private String total_Price;

	private String order_Date;
	
	private String request_Expected;
	
	
	
	public String getRequest_Expected() {
		return request_Expected;
	}

	public void setRequest_Expected(String request_Expected) {
		this.request_Expected = request_Expected;
	}

	public String getOrder_Date() {
		return order_Date;
	}

	public void setOrder_Date(String order_Date) {
		this.order_Date = order_Date;
	}

	public Integer getProduction_Seq() {
		return production_Seq;
	}

	public void setProduction_Seq(Integer production_Seq) {
		this.production_Seq = production_Seq;
	}

	public String getOrder_Num() {
		return order_Num;
	}

	public void setOrder_Num(String order_Num) {
		this.order_Num = order_Num;
	}

	public String getContract_Name() {
		return contract_Name;
	}

	public void setContract_Name(String contract_Name) {
		this.contract_Name = contract_Name;
	}

	public String getSales() {
		return sales;
	}

	public void setSales(String sales) {
		this.sales = sales;
	}

	public String getOrder_Name() {
		return order_Name;
	}

	public void setOrder_Name(String order_Name) {
		this.order_Name = order_Name;
	}

	public String getManager_Name() {
		return manager_Name;
	}

	public void setManager_Name(String manager_Name) {
		this.manager_Name = manager_Name;
	}

	public String getRequest_Date() {
		return request_Date;
	}

	public void setRequest_Date(String request_Date) {
		this.request_Date = request_Date;
	}

	public String getProduction_Date() {
		return production_Date;
	}

	public void setProduction_Date(String production_Date) {
		this.production_Date = production_Date;
	}

	public String getOrder_States() {
		return order_States;
	}

	public void setOrder_States(String order_States) {
		this.order_States = order_States;
	}

	public String getProduction_Remark() {
		return production_Remark;
	}

	public void setProduction_Remark(String production_Remark) {
		this.production_Remark = production_Remark;
	}

	public String getP_Date() {
		return p_Date;
	}

	public void setP_Date(String p_Date) {
		this.p_Date = p_Date;
	}

	public String getTotal_Price() {
		return total_Price;
	}

	public void setTotal_Price(String total_Price) {
		this.total_Price = total_Price;
	}

	@Override
	public String toString() {
		return "HdProductionVO [production_Seq=" + production_Seq + ", order_Num=" + order_Num + ", contract_Name="
				+ contract_Name + ", sales=" + sales + ", order_Name=" + order_Name + ", manager_Name=" + manager_Name
				+ ", request_Date=" + request_Date + ", production_Date=" + production_Date + ", order_States="
				+ order_States + ", production_Remark=" + production_Remark + ", p_Date=" + p_Date + ", total_Price="
				+ total_Price + ", order_Date=" + order_Date + ", request_Expected=" + request_Expected + "]";
	}

}