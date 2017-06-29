package kr.co.hdmetal.VO;

public class HdInsertVO {
	int dispatcher_Fare;
	String order_Num, order_Date, request_Date, order_Name, manager_Name,
			manager_Tel, contract_Name, sales, consignee_Location,
			consignee_Rank, consignee_Name, consignee_Tel, dispatcher_Weight,
			dispatcher_Company, dispatcher_No, dispatcher_Type, dispatcher_Tel,
			order_delegate_Name, request_Expected, production_Date, p_Date,
			order_States, order_tel, production_Remark, order_Location,
			total_Price, log_Remark, log_Logininfo, order_comment;
	
	public String getOrder_comment() {
		return order_comment;
	}
	public void setOrder_comment(String order_comment) {
		this.order_comment = order_comment;
	}
	public int getDispatcher_Fare() {
		return dispatcher_Fare;
	}
	public void setDispatcher_Fare(int dispatcher_Fare) {
		this.dispatcher_Fare = dispatcher_Fare;
	}
	public String getOrder_Num() {
		return order_Num;
	}
	public void setOrder_Num(String order_Num) {
		this.order_Num = order_Num;
	}
	public String getOrder_Date() {
		return order_Date;
	}
	public void setOrder_Date(String order_Date) {
		this.order_Date = order_Date;
	}
	public String getRequest_Date() {
		return request_Date;
	}
	public void setRequest_Date(String request_Date) {
		this.request_Date = request_Date;
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
	public String getManager_Tel() {
		return manager_Tel;
	}
	public void setManager_Tel(String manager_Tel) {
		this.manager_Tel = manager_Tel;
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
	public String getConsignee_Location() {
		return consignee_Location;
	}
	public void setConsignee_Location(String consignee_Location) {
		this.consignee_Location = consignee_Location;
	}
	public String getConsignee_Rank() {
		return consignee_Rank;
	}
	public void setConsignee_Rank(String consignee_Rank) {
		this.consignee_Rank = consignee_Rank;
	}
	public String getConsignee_Name() {
		return consignee_Name;
	}
	public void setConsignee_Name(String consignee_Name) {
		this.consignee_Name = consignee_Name;
	}
	public String getConsignee_Tel() {
		return consignee_Tel;
	}
	public void setConsignee_Tel(String consignee_Tel) {
		this.consignee_Tel = consignee_Tel;
	}
	public String getDispatcher_Weight() {
		return dispatcher_Weight;
	}
	public void setDispatcher_Weight(String dispatcher_Weight) {
		this.dispatcher_Weight = dispatcher_Weight;
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
	public String getOrder_delegate_Name() {
		return order_delegate_Name;
	}
	public void setOrder_delegate_Name(String order_delegate_Name) {
		this.order_delegate_Name = order_delegate_Name;
	}
	public String getRequest_Expected() {
		return request_Expected;
	}
	public void setRequest_Expected(String request_Expected) {
		this.request_Expected = request_Expected;
	}
	public String getProduction_Date() {
		return production_Date;
	}
	public void setProduction_Date(String production_Date) {
		this.production_Date = production_Date;
	}
	public String getP_Date() {
		return p_Date;
	}
	public void setP_Date(String p_Date) {
		this.p_Date = p_Date;
	}
	public String getOrder_States() {
		return order_States;
	}
	public void setOrder_States(String order_States) {
		this.order_States = order_States;
	}
	public String getOrder_tel() {
		return order_tel;
	}
	public void setOrder_tel(String order_tel) {
		this.order_tel = order_tel;
	}
	public String getProduction_Remark() {
		return production_Remark;
	}
	public void setProduction_Remark(String production_Remark) {
		this.production_Remark = production_Remark;
	}
	public String getOrder_Location() {
		return order_Location;
	}
	public void setOrder_Location(String order_Location) {
		this.order_Location = order_Location;
	}
	public String getTotal_Price() {
		return total_Price;
	}
	public void setTotal_Price(String total_Price) {
		this.total_Price = total_Price;
	}
	public String getLog_Remark() {
		return log_Remark;
	}
	public void setLog_Remark(String log_Remark) {
		this.log_Remark = log_Remark;
	}
	public String getLog_Logininfo() {
		return log_Logininfo;
	}
	public void setLog_Logininfo(String log_Logininfo) {
		this.log_Logininfo = log_Logininfo;
	}
	@Override
	public String toString() {
		return "HdInsertVO [dispatcher_Fare=" + dispatcher_Fare
				+ ", order_Num=" + order_Num + ", order_Date=" + order_Date
				+ ", request_Date=" + request_Date + ", order_Name="
				+ order_Name + ", manager_Name=" + manager_Name
				+ ", manager_Tel=" + manager_Tel + ", contract_Name="
				+ contract_Name + ", sales=" + sales + ", consignee_Location="
				+ consignee_Location + ", consignee_Rank=" + consignee_Rank
				+ ", consignee_Name=" + consignee_Name + ", consignee_Tel="
				+ consignee_Tel + ", dispatcher_Weight=" + dispatcher_Weight
				+ ", dispatcher_Company=" + dispatcher_Company
				+ ", dispatcher_No=" + dispatcher_No + ", dispatcher_Type="
				+ dispatcher_Type + ", dispatcher_Tel=" + dispatcher_Tel
				+ ", order_delegate_Name=" + order_delegate_Name
				+ ", request_Expected=" + request_Expected
				+ ", production_Date=" + production_Date + ", p_Date=" + p_Date
				+ ", order_States=" + order_States + ", order_tel=" + order_tel
				+ ", production_Remark=" + production_Remark
				+ ", order_Location=" + order_Location + ", total_Price="
				+ total_Price + ", log_Remark=" + log_Remark
				+ ", log_Logininfo=" + log_Logininfo + ", order_comment="
				+ order_comment + "]";
	}

}
