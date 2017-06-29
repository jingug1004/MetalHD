package kr.co.hdmetal.VO;

public class HDAlldataVO {
	private int
	//products�� ���� seq��
	products_seq,
		
	//production�� ���� seq��
	production_seq,
		
	//���� ���� (�������� �̺�����)
	dispatcher_fare,
		
	//log�� ���� seq��
	log_seq;
	
	
	private String 
	//�ֹ���ȣ(������)
	order_num,
	
	//�����ȣ
	lot_no,
	
	//ǰ��
	item,
	
	//�԰�(L) �ʺ�, ��
	size_l,
	
	//�԰�(S) ����, ����
	size_s,
	
	//�԰�(T) �β�
	size_t,
	
	//�԰�(m) ����
	size_m,
	
	//����
	size_p,
	
	//����
	volume,
	
	//�ܰ�
	price,
	
	//products�� ���� ���
	products_remark,
	
	//�ֹ��� ǰ��
	order_item,
	
	//�࿡ ���� �� ��
	t_price,
	
	//����
	contract_name,
	
	//�������
	sales,
	
	//��ȣ
	order_name,
	
	//�����
	manager_name,
	
	//��ǰ��û��
	request_date,
	
	//���꿹����
	production_date,
	
	//��ǰ�Ϸ���
	order_states,
	
	//����� ���ǻ���
	production_remark,
	
	//�ѱݾ�
	total_price,
	
	//����ҿ���
	p_date,
	
	//��ǰ������
	request_expected,
	
	//������
	order_date,
	
	//��ǥ
	order_delegate_name,
	
	//�ּ�
	order_location,
	
	//����ó
	order_tel,
	
	//�ѽ�
	order_fax,
	
	//����� ����ó
	manager_tel,
	
	//��� ��ȣ
	m_no,
	
	//ȭ�� ��ü
	dispatcher_company,
	
	//���� ��ȣ
	dispatcher_no,
	
	//����
	dispatcher_type,
	
	//��� ����ó
	dispatcher_tel,
	
	//���߷�
	dispatcher_weight,
	
	//�μ��� ��å
	consignee_rank,
	
	//�μ��� �̸�
	consignee_name,
	
	//�μ��� ����ó
	consignee_tel,
	
	//�μ��޴� ��� 
	consignee_location,
	
	//���� ����
	log_remark,
	
	//�α��� ����
	log_logininfo;


	public String getSize_p() {
		return size_p;
	}


	public void setSize_p(String size_p) {
		this.size_p = size_p;
	}


	public String getVolume() {
		return volume;
	}


	public void setVolume(String volume) {
		this.volume = volume;
	}


	public int getProducts_seq() {
		return products_seq;
	}


	public void setProducts_seq(int products_seq) {
		this.products_seq = products_seq;
	}


	public int getProduction_seq() {
		return production_seq;
	}


	public void setProduction_seq(int production_seq) {
		this.production_seq = production_seq;
	}


	public int getDispatcher_fare() {
		return dispatcher_fare;
	}


	public void setDispatcher_fare(int dispatcher_fare) {
		this.dispatcher_fare = dispatcher_fare;
	}


	public int getLog_seq() {
		return log_seq;
	}


	public void setLog_seq(int log_seq) {
		this.log_seq = log_seq;
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


	public String getSize_m() {
		return size_m;
	}


	public void setSize_m(String size_m) {
		this.size_m = size_m;
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


	public String getT_price() {
		return t_price;
	}


	public void setT_price(String t_price) {
		this.t_price = t_price;
	}


	public String getContract_name() {
		return contract_name;
	}


	public void setContract_name(String contract_name) {
		this.contract_name = contract_name;
	}


	public String getSales() {
		return sales;
	}


	public void setSales(String sales) {
		this.sales = sales;
	}


	public String getOrder_name() {
		return order_name;
	}


	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}


	public String getManager_name() {
		return manager_name;
	}


	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}


	public String getRequest_date() {
		return request_date;
	}


	public void setRequest_date(String request_date) {
		this.request_date = request_date;
	}


	public String getProduction_date() {
		return production_date;
	}


	public void setProduction_date(String production_date) {
		this.production_date = production_date;
	}


	public String getOrder_states() {
		return order_states;
	}


	public void setOrder_states(String order_states) {
		this.order_states = order_states;
	}


	public String getProduction_remark() {
		return production_remark;
	}


	public void setProduction_remark(String production_remark) {
		this.production_remark = production_remark;
	}


	public String getTotal_price() {
		return total_price;
	}


	public void setTotal_price(String total_price) {
		this.total_price = total_price;
	}


	public String getP_date() {
		return p_date;
	}


	public void setP_date(String p_date) {
		this.p_date = p_date;
	}


	public String getRequest_expected() {
		return request_expected;
	}


	public void setRequest_expected(String request_expected) {
		this.request_expected = request_expected;
	}


	public String getOrder_date() {
		return order_date;
	}


	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}


	public String getOrder_delegate_name() {
		return order_delegate_name;
	}


	public void setOrder_delegate_name(String order_delegate_name) {
		this.order_delegate_name = order_delegate_name;
	}


	public String getOrder_location() {
		return order_location;
	}


	public void setOrder_location(String order_location) {
		this.order_location = order_location;
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


	public String getManager_tel() {
		return manager_tel;
	}


	public void setManager_tel(String manager_tel) {
		this.manager_tel = manager_tel;
	}


	public String getM_no() {
		return m_no;
	}


	public void setM_no(String m_no) {
		this.m_no = m_no;
	}


	public String getDispatcher_company() {
		return dispatcher_company;
	}


	public void setDispatcher_company(String dispatcher_company) {
		this.dispatcher_company = dispatcher_company;
	}


	public String getDispatcher_no() {
		return dispatcher_no;
	}


	public void setDispatcher_no(String dispatcher_no) {
		this.dispatcher_no = dispatcher_no;
	}


	public String getDispatcher_type() {
		return dispatcher_type;
	}


	public void setDispatcher_type(String dispatcher_type) {
		this.dispatcher_type = dispatcher_type;
	}


	public String getDispatcher_tel() {
		return dispatcher_tel;
	}


	public void setDispatcher_tel(String dispatcher_tel) {
		this.dispatcher_tel = dispatcher_tel;
	}


	public String getDispatcher_weight() {
		return dispatcher_weight;
	}


	public void setDispatcher_weight(String dispatcher_weight) {
		this.dispatcher_weight = dispatcher_weight;
	}


	public String getConsignee_rank() {
		return consignee_rank;
	}


	public void setConsignee_rank(String consignee_rank) {
		this.consignee_rank = consignee_rank;
	}


	public String getConsignee_name() {
		return consignee_name;
	}


	public void setConsignee_name(String consignee_name) {
		this.consignee_name = consignee_name;
	}


	public String getConsignee_tel() {
		return consignee_tel;
	}


	public void setConsignee_tel(String consignee_tel) {
		this.consignee_tel = consignee_tel;
	}


	public String getConsignee_location() {
		return consignee_location;
	}


	public void setConsignee_location(String consignee_location) {
		this.consignee_location = consignee_location;
	}


	public String getLog_remark() {
		return log_remark;
	}


	public void setLog_remark(String log_remark) {
		this.log_remark = log_remark;
	}


	public String getLog_logininfo() {
		return log_logininfo;
	}


	public void setLog_logininfo(String log_logininfo) {
		this.log_logininfo = log_logininfo;
	}


	@Override
	public String toString() {
		return "HDAlldataVO [products_seq=" + products_seq
				+ ", production_seq=" + production_seq + ", dispatcher_fare="
				+ dispatcher_fare + ", log_seq=" + log_seq + ", order_num="
				+ order_num + ", lot_no=" + lot_no + ", item=" + item
				+ ", size_l=" + size_l + ", size_s=" + size_s + ", size_t="
				+ size_t + ", size_m=" + size_m + ", size_p=" + size_p
				+ ", volume=" + volume + ", price=" + price
				+ ", products_remark=" + products_remark + ", order_item="
				+ order_item + ", t_price=" + t_price + ", contract_name="
				+ contract_name + ", sales=" + sales + ", order_name="
				+ order_name + ", manager_name=" + manager_name
				+ ", request_date=" + request_date + ", production_date="
				+ production_date + ", order_states=" + order_states
				+ ", production_remark=" + production_remark + ", total_price="
				+ total_price + ", p_date=" + p_date + ", request_expected="
				+ request_expected + ", order_date=" + order_date
				+ ", order_delegate_name=" + order_delegate_name
				+ ", order_location=" + order_location + ", order_tel="
				+ order_tel + ", order_fax=" + order_fax + ", manager_tel="
				+ manager_tel + ", m_no=" + m_no + ", dispatcher_company="
				+ dispatcher_company + ", dispatcher_no=" + dispatcher_no
				+ ", dispatcher_type=" + dispatcher_type + ", dispatcher_tel="
				+ dispatcher_tel + ", dispatcher_weight=" + dispatcher_weight
				+ ", consignee_rank=" + consignee_rank + ", consignee_name="
				+ consignee_name + ", consignee_tel=" + consignee_tel
				+ ", consignee_location=" + consignee_location
				+ ", log_remark=" + log_remark + ", log_logininfo="
				+ log_logininfo + "]";
	}
	
	
	
}
