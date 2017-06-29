package kr.co.hdmetal.VO;

public class HDfactoryVO {

	private Integer factorySeq;

	private String orderNum;

	private String lotNo;

	//  기계 번호
	private String mNo;

	public Integer getFactorySeq() {
		return factorySeq;
	}

	public void setFactorySeq(Integer factorySeq) {
		this.factorySeq = factorySeq;
	}

	public String getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}

	public String getLotNo() {
		return lotNo;
	}

	public void setLotNo(String lotNo) {
		this.lotNo = lotNo;
	}

	public String getMNo() {
		return mNo;
	}

	public void setMNo(String mNo) {
		this.mNo = mNo;
	}

	// HdFactory 모델 복사
	public void CopyData(HDfactoryVO param) {
		this.factorySeq = param.getFactorySeq();
		this.orderNum = param.getOrderNum();
		this.lotNo = param.getLotNo();
		this.mNo = param.getMNo();
	}
}
