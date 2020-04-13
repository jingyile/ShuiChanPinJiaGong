package cn.action.modules.bas.entity;

import cn.action.common.persistence.DataEntity;

public class Line extends DataEntity<Line> {
	/**
	 * 产线
	 */
	private static final long serialVersionUID =1L;
	private String lineName;
	private String lineNumber;
	private String lineMaster;
	private String lineDescription;
	private WorkShop workShop;//车间外键对象

	public String getLineName() {
		return lineName;
	}
	public void setLineName(String lineName) {
		this.lineName = lineName;
	}

	public String getLineNumber() {
		return lineNumber;
	}

	public void setLineNumber(String lineNumber) {
		this.lineNumber = lineNumber;
	}
	public String getLineMaster() {
		return lineMaster;
	}
	public void setLineMaster(String lineMaster) {
		this.lineMaster = lineMaster;
	}
	public String getLineDescription() {
		return lineDescription;
	}
	public void setLineDescription(String lineDescription) {
		this.lineDescription = lineDescription;
	}
	public WorkShop getWorkShop() {
		return workShop;
	}
	public void setWorkShop(WorkShop workShop) {
		this.workShop = workShop;
	}
}