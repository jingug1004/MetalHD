package kr.co.hdmetal.VO;

//발주처 정보
public class HdOrderCompanyVO {

	//  상호
	private String order_Name;

	//  대표
	private String order_delegate_Name;

	//  주소
	private String order_Location;

	//  연락처
	private String order_tel;

	//  팩스
	private String order_fax;

	public String getOrder_Name() {
		return order_Name;
	}

	public void setOrder_Name(String order_Name) {
		this.order_Name = order_Name;
	}

	public String getOrder_delegate_Name() {
		return order_delegate_Name;
	}

	public void setOrder_delegate_Name(String order_delegate_Name) {
		this.order_delegate_Name = order_delegate_Name;
	}

	public String getOrder_Location() {
		return order_Location;
	}

	public void setOrder_Location(String order_Location) {
		this.order_Location = order_Location;
	}

	public String getOrder_tel() {
		return order_tel;
	}

	public void setOrder_tel(String order_tel) {
		this.order_tel = order_tel;
	}

	public String getOrder_fax() {
		return order_fax;
	}

	public void setOrder_fax(String order_fax) {
		this.order_fax = order_fax;
	}

	@Override
	public String toString() {
		return "HdOrderCompanyVO [order_Name=" + order_Name
				+ ", order_delegate_Name=" + order_delegate_Name
				+ ", order_Location=" + order_Location + ", order_tel="
				+ order_tel + ", order_fax=" + order_fax + "]";
	}

}