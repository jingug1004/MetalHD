package kr.co.hdmetal.VO;

//  발주처 담당자 정보
public class HdManagerinfoVO {

	//  상호
	private String order_Name;

	//  담당자
	private String manager_Name;

	//  담당자 연락처
	private String manager_Tel;

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

	@Override
	public String toString() {
		return "HdManagerinfoVO [order_Name=" + order_Name + ", manager_Name="
				+ manager_Name + ", manager_Tel=" + manager_Tel + "]";
	}

}
