package cn.action.modules.trace.entity;

import cn.action.common.persistence.DataEntity;

/**
 * 追溯工单实体类
 * @author Administrator
 *
 */
public class TraceWorkOrder extends DataEntity<TraceWorkOrder>{
	private static final long serialVersionUID = 1L;
	private String proCode; // 工序编号
	private String proName;// 工序名称
	private String mname;// 名称
	private int mnum;// 数量
	private String  orderCode;//工单号
	
	public TraceWorkOrder() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getProCode() {
		return proCode;
	}
	public void setProCode(String proCode) {
		this.proCode = proCode;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public int getMnum() {
		return mnum;
	}
	public void setMnum(int mnum) {
		this.mnum = mnum;
	}
	public String getOrderCode() {
		return orderCode;
	}
	public void setOrderCode(String orderCode) {
		this.orderCode = orderCode;
	}

}
