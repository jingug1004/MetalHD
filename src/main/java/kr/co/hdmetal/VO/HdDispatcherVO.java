package kr.co.hdmetal.VO;

//  ���� ����
public class HdDispatcherVO {

	private String order_Num;

	//  ȭ�� ��ü
	private String dispatcher_Company;

	//  ���� ��ȣ
	private String dispatcher_No;

	//  ����
	private String dispatcher_Type;

	//  ��� ����ó
	private String dispatcher_Tel;

	//  ����
	private Integer dispatcher_Fare;
	
	private String dispatcher_Weight;

	public String getDispatcher_Weight() {
		return dispatcher_Weight;
	}

	public void setDispatcher_Weight(String dispatcher_Weight) {
		this.dispatcher_Weight = dispatcher_Weight;
	}

	public String getOrder_Num() {
		return order_Num;
	}

	public void setOrder_Num(String order_Num) {
		this.order_Num = order_Num;
	}

	public String getDispatcher_Company() {
		return dispatcher_Company;
	}

	public void setDispatcher_Company(String dispatcher_Company) {
		this.dispatcher_Company = dispatcher_Company;
	}

	public String getDispatcher_No() {
		return dispatcher_No;
	}

	public void setDispatcher_No(String dispatcher_No) {
		this.dispatcher_No = dispatcher_No;
	}

	public String getDispatcher_Type() {
		return dispatcher_Type;
	}

	public void setDispatcher_Type(String dispatcher_Type) {
		this.dispatcher_Type = dispatcher_Type;
	}

	public String getDispatcher_Tel() {
		return dispatcher_Tel;
	}

	public void setDispatcher_Tel(String dispatcher_Tel) {
		this.dispatcher_Tel = dispatcher_Tel;
	}

	public Integer getDispatcher_Fare() {
		return dispatcher_Fare;
	}

	public void setDispatcher_Fare(Integer dispatcher_Fare) {
		this.dispatcher_Fare = dispatcher_Fare;
	}

	@Override
	public String toString() {
		return "HdDispatcherVO [order_Num=" + order_Num + ", dispatcher_Company=" + dispatcher_Company
				+ ", dispatcher_No=" + dispatcher_No + ", dispatcher_Type=" + dispatcher_Type + ", dispatcher_Tel="
				+ dispatcher_Tel + ", dispatcher_Fare=" + dispatcher_Fare + ", dispatcher_Weight=" + dispatcher_Weight
				+ "]";
	}
}
