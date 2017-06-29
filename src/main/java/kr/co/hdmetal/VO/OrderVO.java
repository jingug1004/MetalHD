package kr.co.hdmetal.VO;

public class OrderVO {
	
	int seq;
	
	String order_number,
	order_date,
	order_company,
	order_duty,
	duty_contact,
	contract_name,
	sales_duty,
	delivery_date,
	delivery_address,
	acceptor_position,
	acceptor_name,
	acceptor_contact,
	gross_weight,
	transfer_company,
	transfer_number,
	transfer_model,
	transfer_contact,
	transfer_cost,
	delivery_due,
	manufacture_due,
	stamp_time,
	delivery_check,
	caution,
	delegate_name,
	delegate_contact,
	delegate_address,
	remark,
	userid;

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getOrder_number() {
		return order_number;
	}

	public void setOrder_number(String order_number) {
		this.order_number = order_number;
	}

	public String getOrder_date() {
		return order_date;
	}

	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}

	public String getOrder_company() {
		return order_company;
	}

	public void setOrder_company(String order_company) {
		this.order_company = order_company;
	}

	public String getOrder_duty() {
		return order_duty;
	}

	public void setOrder_duty(String order_duty) {
		this.order_duty = order_duty;
	}

	public String getDuty_contact() {
		return duty_contact;
	}

	public void setDuty_contact(String duty_contact) {
		this.duty_contact = duty_contact;
	}

	public String getContract_name() {
		return contract_name;
	}

	public void setContract_name(String contract_name) {
		this.contract_name = contract_name;
	}

	public String getSales_duty() {
		return sales_duty;
	}

	public void setSales_duty(String sales_duty) {
		this.sales_duty = sales_duty;
	}

	public String getDelivery_date() {
		return delivery_date;
	}

	public void setDelivery_date(String delivery_date) {
		this.delivery_date = delivery_date;
	}

	public String getDelivery_address() {
		return delivery_address;
	}

	public void setDelivery_address(String delivery_address) {
		this.delivery_address = delivery_address;
	}

	public String getAcceptor_position() {
		return acceptor_position;
	}

	public void setAcceptor_position(String acceptor_position) {
		this.acceptor_position = acceptor_position;
	}

	public String getAcceptor_name() {
		return acceptor_name;
	}

	public void setAcceptor_name(String acceptor_name) {
		this.acceptor_name = acceptor_name;
	}

	public String getAcceptor_contact() {
		return acceptor_contact;
	}

	public void setAcceptor_contact(String acceptor_contact) {
		this.acceptor_contact = acceptor_contact;
	}

	public String getGross_weight() {
		return gross_weight;
	}

	public void setGross_weight(String gross_weight) {
		this.gross_weight = gross_weight;
	}

	public String getTransfer_company() {
		return transfer_company;
	}

	public void setTransfer_company(String transfer_company) {
		this.transfer_company = transfer_company;
	}

	public String getTransfer_number() {
		return transfer_number;
	}

	public void setTransfer_number(String transfer_number) {
		this.transfer_number = transfer_number;
	}

	public String getTransfer_model() {
		return transfer_model;
	}

	public void setTransfer_model(String transfer_model) {
		this.transfer_model = transfer_model;
	}

	public String getTransfer_contact() {
		return transfer_contact;
	}

	public void setTransfer_contact(String transfer_contact) {
		this.transfer_contact = transfer_contact;
	}

	public String getTransfer_cost() {
		return transfer_cost;
	}

	public void setTransfer_cost(String transfer_cost) {
		this.transfer_cost = transfer_cost;
	}

	public String getDelivery_due() {
		return delivery_due;
	}

	public void setDelivery_due(String delivery_due) {
		this.delivery_due = delivery_due;
	}

	public String getManufacture_due() {
		return manufacture_due;
	}

	public void setManufacture_due(String manufacture_due) {
		this.manufacture_due = manufacture_due;
	}

	public String getStamp_time() {
		return stamp_time;
	}

	public void setStamp_time(String stamp_time) {
		this.stamp_time = stamp_time;
	}

	public String getDelivery_check() {
		return delivery_check;
	}

	public void setDelivery_check(String delivery_check) {
		this.delivery_check = delivery_check;
	}

	public String getCaution() {
		return caution;
	}

	public void setCaution(String caution) {
		this.caution = caution;
	}

	public String getDelegate_name() {
		return delegate_name;
	}

	public void setDelegate_name(String delegate_name) {
		this.delegate_name = delegate_name;
	}

	public String getDelegate_contact() {
		return delegate_contact;
	}

	public void setDelegate_contact(String delegate_contact) {
		this.delegate_contact = delegate_contact;
	}

	public String getDelegate_address() {
		return delegate_address;
	}

	public void setDelegate_address(String delegate_address) {
		this.delegate_address = delegate_address;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "OrderItemVO [seq=" + seq + ", order_number=" + order_number + ", order_date=" + order_date
				+ ", order_company=" + order_company + ", order_duty=" + order_duty + ", duty_contact=" + duty_contact
				+ ", contract_name=" + contract_name + ", sales_duty=" + sales_duty + ", delivery_date=" + delivery_date
				+ ", delivery_address=" + delivery_address + ", acceptor_position=" + acceptor_position
				+ ", acceptor_name=" + acceptor_name + ", acceptor_contact=" + acceptor_contact + ", gross_weight="
				+ gross_weight + ", transfer_company=" + transfer_company + ", transfer_number=" + transfer_number
				+ ", transfer_model=" + transfer_model + ", transfer_contact=" + transfer_contact + ", transfer_cost="
				+ transfer_cost + ", delivery_due=" + delivery_due + ", manufacture_due=" + manufacture_due
				+ ", stamp_time=" + stamp_time + ", delivery_check=" + delivery_check + ", caution=" + caution
				+ ", delegate_name=" + delegate_name + ", delegate_contact=" + delegate_contact + ", delegate_address="
				+ delegate_address + ", remark=" + remark + ", userid=" + userid + "]";
	}

}
