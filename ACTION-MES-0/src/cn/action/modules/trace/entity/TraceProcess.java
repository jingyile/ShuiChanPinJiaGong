package cn.action.modules.trace.entity;

import cn.action.common.persistence.DataEntity;

/**
 * ׷�ݹ���ʵ����
 * @author Administrator
 *
 */
public class TraceProcess extends DataEntity<TraceProcess>{

	private static final long serialVersionUID = 1L;
	private String proCode; // ��������
	private String proName;// ������
	private String proDesc;// ��������
	private String lotNumber; // ����


	public TraceProcess() {
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

	public String getProDesc() {
		return proDesc;
	}

	public void setProDesc(String proDesc) {
		this.proDesc = proDesc;
	}

	public String getLotNumber() {
		return lotNumber;
	}

	public void setLotNumber(String lotNumber) {
		this.lotNumber = lotNumber;
	}
	
}

