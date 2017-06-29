package kr.co.hdmetal.VO;

public class MemberVO {
	int mb_seq;
	String mb_id, mb_pass, mb_name, mb_rank;
	String check;

	

	public String getMb_rank() {
		return mb_rank;
	}

	public void setMb_rank(String mb_rank) {
		this.mb_rank = mb_rank;
	}

	public String getCheck() {
		return check;
	}

	public void setCheck(String check) {
		this.check = check;
	}

	public int getMb_seq() {
		return mb_seq;
	}

	public void setMb_seq(int mb_seq) {
		this.mb_seq = mb_seq;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public String getMb_pass() {
		return mb_pass;
	}

	public void setMb_pass(String mb_pass) {
		this.mb_pass = mb_pass;
	}

	public String getMb_name() {
		return mb_name;
	}

	public void setMb_name(String mb_name) {
		this.mb_name = mb_name;
	}

	@Override
	public String toString() {
		return "MemberVO [mb_seq=" + mb_seq + ", mb_id=" + mb_id + ", mb_pass="
				+ mb_pass + ", mb_name=" + mb_name + ", mb_rank=" + mb_rank
				+ ", check=" + check + "]";
	}

}
