package kr.co.hdmetal.VO;

public class HdCommentVO {
	String order_num, order_comment, log_logininfo;

	public String getLog_logininfo() {
		return log_logininfo;
	}

	public void setLog_logininfo(String log_logininfo) {
		this.log_logininfo = log_logininfo;
	}

	public String getOrder_num() {
		return order_num;
	}

	public void setOrder_num(String order_num) {
		this.order_num = order_num;
	}

	public String getOrder_comment() {
		return order_comment;
	}

	public void setOrder_comment(String order_comment) {
		this.order_comment = order_comment;
	}


	@Override
	public String toString() {
		return "HdCommentVO [order_num=" + order_num + ", order_comment="
				+ order_comment + ", log_logininfo=" + log_logininfo + "]";
	}

}
