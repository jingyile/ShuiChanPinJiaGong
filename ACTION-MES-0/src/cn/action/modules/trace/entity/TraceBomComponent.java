package cn.action.modules.trace.entity;
import cn.action.common.persistence.DataEntity;
import cn.action.modules.bas.entity.Bom;
/**
 *  ׷������ʵ����
 * @author �Ŵ�
 */
public class TraceBomComponent extends DataEntity<TraceBomComponent>{

	private static final long serialVersionUID = 1L;
	private Bom bom;
	
	private String mname;// ����
	private int mnum;// ����
	private String proCode;// ������
	private String proName;// ��������
	private int whours;// ��ʱ
	private String lotNumber; // ����
	
		
	public TraceBomComponent() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Bom getBom() {
		return bom;
	}


	public void setBom(Bom bom) {
		this.bom = bom;
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


	public int getWhours() {
		return whours;
	}


	public void setWhours(int whours) {
		this.whours = whours;
	}


	public String getLotNumber() {
		return lotNumber;
	}


	public void setLotNumber(String lotNumber) {
		this.lotNumber = lotNumber;
	}

}

