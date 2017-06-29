package kr.co.hdmetal.VO;

//  수정 정보
public class HdUpdatelogVO {

	private Integer log_Seq;

	private String order_Num;

	//  수정 내역
	private String log_Remark;

	//  로그인 정보
	private String log_Logininfo;

	public Integer getLog_Seq() {
		return log_Seq;
	}

	public void setLog_Seq(Integer log_Seq) {
		this.log_Seq = log_Seq;
	}

	public String getOrder_Num() {
		return order_Num;
	}

	public void setOrder_Num(String order_Num) {
		this.order_Num = order_Num;
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
		return "HdUpdatelogVO [log_Seq=" + log_Seq + ", order_Num=" + order_Num
				+ ", log_Remark=" + log_Remark + ", log_Logininfo="
				+ log_Logininfo + "]";
	}
}
