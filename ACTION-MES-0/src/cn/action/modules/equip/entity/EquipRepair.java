package cn.action.modules.equip.entity;

import cn.action.common.persistence.DataEntity;

public class EquipRepair extends DataEntity<EquipRepair> {

    private static final long serialVersionUID = 1L;
    private String mid;//上报记录报告
    private String faultType;//故障类型
    private String faultReason;//故障原因
    private String faultDesc;//故障描述
    private String faultImgs;//图片地址


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
