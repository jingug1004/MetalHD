package kr.co.hdmetal.VO;

public class OrderItemVO {
	
	int seq,
	quantity,
	price;
	
	String order_number,
	order_sheet,
	item_name,
	stamp,
	scale_l,
	scale_s,
	scale_t, 
	scale_p,
	scale_m,
	item_number,
	note;

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getOrder_number() {
		return order_number;
	}

	public void setOrder_number(String order_number) {
		this.order_number = order_number;
	}

	public String getOrder_sheet() {
		return order_sheet;
	}

	public void setOrder_sheet(String order_sheet) {
		this.order_sheet = order_sheet;
	}

	public String getItem_name() {
		return item_name;
	}

	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}

	public String getStamp() {
		return stamp;
	}

	public void setStamp(String stamp) {
		this.stamp = stamp;
	}

	public String getScale_l() {
		return scale_l;
	}

	public void setScale_l(String scale_l) {
		this.scale_l = scale_l;
	}

	public String getScale_s() {
		return scale_s;
	}

	public void setScale_s(String scale_s) {
		this.scale_s = scale_s;
	}

	public String getScale_t() {
		return scale_t;
	}

	public void setScale_t(String scale_t) {
		this.scale_t = scale_t;
	}

	public String getScale_p() {
		return scale_p;
	}

	public void setScale_p(String scale_p) {
		this.scale_p = scale_p;
	}

	public String getScale_m() {
		return scale_m;
	}

	public void setScale_m(String scale_m) {
		this.scale_m = scale_m;
	}

	public String getItem_number() {
		return item_number;
	}

	public void setItem_number(String item_number) {
		this.item_number = item_number;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	@Override
	public String toString() {
		return "OrderItemVO [seq=" + seq + ", quantity=" + quantity + ", price=" + price + ", order_number="
				+ order_number + ", order_sheet=" + order_sheet + ", item_name=" + item_name + ", stamp=" + stamp
				+ ", scale_l=" + scale_l + ", scale_s=" + scale_s + ", scale_t=" + scale_t + ", scale_p=" + scale_p
				+ ", scale_m=" + scale_m + ", item_number=" + item_number + ", note=" + note + "]";
	}

}
