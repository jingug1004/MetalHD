package kr.co.hdmetal.VO;

//  인수 정보
public class HdConsigneeVO {

	private String order_Num;

	//  인수자 직책
	private String consignee_Rank;

	//  이름
	private String consignee_Name;

	//  연락처
	private String consignee_Tel;

	//  납품장소
	private String consignee_Location;

	public String getOrder_Num() {
		return order_Num;
	}

	public void setOrder_Num(String order_Num) {
		this.order_Num = order_Num;
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

	public String getConsignee_Location() {
		return consignee_Location;
	}

	public void setConsignee_Location(String consignee_Location) {
		this.consignee_Location = consignee_Location;
	}

	@Override
	public String toString() {
		return "HdConsigneeVO [order_Num=" + order_Num + ", consignee_Rank="
				+ consignee_Rank + ", consignee_Name=" + consignee_Name
				+ ", consignee_Tel=" + consignee_Tel + ", consignee_Location="
				+ consignee_Location + "]";
	}
}
