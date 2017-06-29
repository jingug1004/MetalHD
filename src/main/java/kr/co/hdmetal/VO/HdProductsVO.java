package kr.co.hdmetal.VO;

//�ֹ�����ǰ ����
public class HdProductsVO {

	//  �ֹ� ��ȣ(������)
	private String order_num;

	//  ���� ��ȣ
	private String lot_no;

	//  ǰ��
	private String item;

	//  �԰�(L) �ʺ�, ��
	private String size_l;

	//  �԰�(S) ����, ����
	private String size_s;

	//  �԰�(T) �β�
	private String size_t;

	//  �԰�(P) ����
	private String size_p;

	//  �԰�(M) ����
	private String size_m;

	//  ����
	private String volume;

	//  �ܰ�
	private String price;

	//  ���
	private String products_remark;

	//  �ֹ��� ǰ��
	private String order_item;

	//�ະ ��Ż�ݾ�
	private String t_total;
	
	private int products_seq;

	public int getProducts_seq() {
		return products_seq;
	}

	public void setProducts_seq(int products_seq) {
		this.products_seq = products_seq;
	}

	public String getOrder_num() {
		return order_num;
	}

	public void setOrder_num(String order_num) {
		this.order_num = order_num;
	}

	public String getLot_no() {
		return lot_no;
	}

	public void setLot_no(String lot_no) {
		this.lot_no = lot_no;
	}

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

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getProducts_remark() {
		return products_remark;
	}

	public void setProducts_remark(String products_remark) {
		this.products_remark = products_remark;
	}

	public String getOrder_item() {
		return order_item;
	}

	public void setOrder_item(String order_item) {
		this.order_item = order_item;
	}

	public String getT_total() {
		return t_total;
	}

	public void setT_total(String t_total) {
		this.t_total = t_total;
	}

	@Override
	public String toString() {
		return "HdProductsVO [order_num=" + order_num + ", lot_no=" + lot_no + ", item=" + item + ", size_l=" + size_l
				+ ", size_s=" + size_s + ", size_t=" + size_t + ", size_p=" + size_p + ", size_m=" + size_m
				+ ", volume=" + volume + ", price=" + price + ", products_remark=" + products_remark + ", order_item="
				+ order_item + ", t_total=" + t_total + ", products_seq=" + products_seq + "]";
	}
	
	

}