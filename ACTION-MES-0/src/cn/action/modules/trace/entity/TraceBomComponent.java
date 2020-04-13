package cn.action.modules.trace.entity;
import cn.action.common.persistence.DataEntity;
import cn.action.modules.bas.entity.Bom;
/**
 *  追溯物料实体类
 * @author 张聪
 */
public class TraceBomComponent extends DataEntity<TraceBomComponent>{

	private static final long serialVersionUID = 1L;
	private Bom bom;
	
	private String mname;// 名称
	private int mnum;// 数量
	private String proCode;// 工序编号
	private String proName;// 工序名称
	private int whours;// 工时
	private String lotNumber; // 批次
	
		
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

