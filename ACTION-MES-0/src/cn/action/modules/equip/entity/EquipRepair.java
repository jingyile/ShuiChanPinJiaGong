package cn.action.modules.equip.entity;

import cn.action.common.persistence.DataEntity;

public class EquipRepair extends DataEntity<EquipRepair> {

    private static final long serialVersionUID = 1L;
    private String mid;//�ϱ���¼����
    private String faultType;//��������
    private String faultReason;//����ԭ��
    private String faultDesc;//��������
    private String faultImgs;//ͼƬ��ַ


    public String getMid() {
        return mid;
    }

    public String getFaultType() {
        return faultType;
    }

    public String getFaultReason() {
        return faultReason;
    }

    public String getFaultDesc() {
        return faultDesc;
    }

    public String getFaultImgs() {
        return faultImgs;
    }

    public void setMid(String mid) {
        this.mid = mid;
    }

    public void setFaultType(String faultType) {
        this.faultType = faultType;
    }

    public void setFaultReason(String faultReason) {
        this.faultReason = faultReason;
    }

    public void setFaultDesc(String faultDesc) {
        this.faultDesc = faultDesc;
    }

    public void setFaultImgs(String faultImgs) {
        this.faultImgs = faultImgs;
    }
}
