package cn.action.modules.bas.entity;

import cn.action.common.persistence.DataEntity;
import cn.action.modules.sys.entity.Office;
/**
 * 读卡器实体类
 * @author Administrator
 *
 */
public class CardReader extends DataEntity<CardReader> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private WorkCell workCell = new WorkCell();
	private WorkStationInfos workStationInfos = new WorkStationInfos();
	private String readerSpeed;//读取速度
	private String timeInterval;//打卡间隔
	private String distance;//感应距离
	private String readerType;//读卡类型
	private String frequency;//读卡频率
	private String qrCode;					//设备条码
	private String type;				//设备类型
	private String spec;				//设备规格
	private String supplier;				//供应商
	private String manufacturer;		//生产商
	private String factoryNumber;		//出厂编号
	private String purpose;				//用途
	private String buyDate;					//采购日期
	private String person;					//资产负责人
	private Office organization;			//所有权部门
	private String ip;							//ip
	private String comBaudrate;		//com波特率
	private String comDataseat;		//com数据位
	private String comBegin;				//com起始位
	private String comEnd;				//com终止位
	private String checkMode;			//校验方式
	private String sysParam;				//系统简单属性
	public String getReaderSpeed() {
		return readerSpeed;
	}
	public void setReaderSpeed(String readerSpeed) {
		this.readerSpeed = readerSpeed;
	}
	public String getTimeInterval() {
		return timeInterval;
	}
	public void setTimeInterval(String timeInterval) {
		this.timeInterval = timeInterval;
	}
	public String getDistance() {
		return distance;
	}
	public void setDistance(String distance) {
		this.distance = distance;
	}
	public String getReaderType() {
		return readerType;
	}
	public void setReaderType(String readerType) {
		this.readerType = readerType;
	}
	public String getFrequency() {
		return frequency;
	}
	public void setFrequency(String frequency) {
		this.frequency = frequency;
	}
	public String getQrCode() {
		return qrCode;
	}
	public void setQrCode(String qrCode) {
		this.qrCode = qrCode;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSpec() {
		return spec;
	}
	public void setSpec(String spec) {
		this.spec = spec;
	}
	public String getSupplier() {
		return supplier;
	}
	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getFactoryNumber() {
		return factoryNumber;
	}
	public void setFactoryNumber(String factoryNumber) {
		this.factoryNumber = factoryNumber;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public String getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(String buyDate) {
		this.buyDate = buyDate;
	}
	public String getPerson() {
		return person;
	}
	public void setPerson(String person) {
		this.person = person;
	}
	
	public Office getOrganization() {
		return organization;
	}
	public void setOrganization(Office organization) {
		this.organization = organization;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getComBaudrate() {
		return comBaudrate;
	}
	public void setComBaudrate(String comBaudrate) {
		this.comBaudrate = comBaudrate;
	}
	public String getComDataseat() {
		return comDataseat;
	}
	public void setComDataseat(String comDataseat) {
		this.comDataseat = comDataseat;
	}
	public String getComBegin() {
		return comBegin;
	}
	public void setComBegin(String comBegin) {
		this.comBegin = comBegin;
	}
	public String getComEnd() {
		return comEnd;
	}
	public void setComEnd(String comEnd) {
		this.comEnd = comEnd;
	}
	public String getCheckMode() {
		return checkMode;
	}
	public void setCheckMode(String checkMode) {
		this.checkMode = checkMode;
	}
	public String getSysParam() {
		return sysParam;
	}
	public void setSysParam(String sysParam) {
		this.sysParam = sysParam;
	}
	public WorkCell getWorkCell() {
		return workCell;
	}
	public void setWorkCell(WorkCell workCell) {
		this.workCell = workCell;
	}
	public WorkStationInfos getWorkStationInfos() {
		return workStationInfos;
	}
	public void setWorkStationInfos(WorkStationInfos workStationInfos) {
		this.workStationInfos = workStationInfos;
	}

	
}
