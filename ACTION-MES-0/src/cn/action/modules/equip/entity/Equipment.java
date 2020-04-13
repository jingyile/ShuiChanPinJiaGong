package cn.action.modules.equip.entity;

import cn.action.common.persistence.DataEntity;
import cn.action.modules.sys.entity.Office;

public class Equipment extends DataEntity<Equipment> {

    private static final long serialVersionUID = 1L;
    private String qrCode;					//�豸����
    private String type;				//�豸����
    private String spec;				//�豸���
    private String supplier;				//��Ӧ��
    private String manufacturer;		//������
    private String factoryNumber;		//�������
    private String purpose;				//��;
    private String buyDate;					//�ɹ�����
    private String person;					//�ʲ�������
    private Office organization;			//����Ȩ����
    private String ip;							//ip
    private String comBaudrate;		//com������
    private String comDataseat;		//com����λ
    private String comBegin;				//com��ʼλ
    private String comEnd;				//com��ֹλ
    private String checkMode;			//У�鷽ʽ
    private String sysParam;				//ϵͳ������

    public String getQrCode() {
        return qrCode;
    }

    public String getType() {
        return type;
    }

    public String getSpec() {
        return spec;
    }

    public String getSupplier() {
        return supplier;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public String getFactoryNumber() {
        return factoryNumber;
    }

    public String getPurpose() {
        return purpose;
    }

    public String getBuyDate() {
        return buyDate;
    }

    public String getPerson() {
        return person;
    }

    public Office getOrganization() {
        return organization;
    }

    public String getIp() {
        return ip;
    }

    public String getComBaudrate() {
        return comBaudrate;
    }

    public String getComDataseat() {
        return comDataseat;
    }

    public String getComBegin() {
        return comBegin;
    }

    public String getComEnd() {
        return comEnd;
    }

    public String getCheckMode() {
        return checkMode;
    }

    public String getSysParam() {
        return sysParam;
    }

    public void setQrCode(String qrCode) {
        this.qrCode = qrCode;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setSpec(String spec) {
        this.spec = spec;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public void setFactoryNumber(String factoryNumber) {
        this.factoryNumber = factoryNumber;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    public void setBuyDate(String buyDate) {
        this.buyDate = buyDate;
    }

    public void setPerson(String person) {
        this.person = person;
    }

    public void setOrganization(Office organization) {
        this.organization = organization;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public void setComBaudrate(String comBaudrate) {
        this.comBaudrate = comBaudrate;
    }

    public void setComDataseat(String comDataseat) {
        this.comDataseat = comDataseat;
    }

    public void setComBegin(String comBegin) {
        this.comBegin = comBegin;
    }

    public void setComEnd(String comEnd) {
        this.comEnd = comEnd;
    }

    public void setCheckMode(String checkMode) {
        this.checkMode = checkMode;
    }

    public void setSysParam(String sysParam) {
        this.sysParam = sysParam;
    }
}
