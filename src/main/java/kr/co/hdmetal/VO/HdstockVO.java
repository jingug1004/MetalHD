package kr.co.hdmetal.VO;

public class HdstockVO {

	String item, size_l, size_s, size_t, size_p, size_m, volume;

	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public String getSize_l() {
		return size_l;
	}

	public void setSize_l(String size_l) {
		this.size_l = size_l;
	}

	public String getSize_s() {
		return size_s;
	}

	public void setSize_s(String size_s) {
		this.size_s = size_s;
	}

	public String getSize_t() {
		return size_t;
	}

	public void setSize_t(String size_t) {
		this.size_t = size_t;
	}

	public String getSize_p() {
		return size_p;
	}

	public void setSize_p(String size_p) {
		this.size_p = size_p;
	}

	public String getSize_m() {
		return size_m;
	}

	public void setSize_m(String size_m) {
		this.size_m = size_m;
	}

	public String getVolume() {
		return volume;
	}

	public void setVolume(String volume) {
		this.volume = volume;
	}

	@Override
	public String toString() {
		return "HdstokVO [item=" + item + ", size_l=" + size_l + ", size_s="
				+ size_s + ", size_t=" + size_t + ", size_p=" + size_p
				+ ", size_m=" + size_m + ", volume=" + volume + "]";
	}

}
