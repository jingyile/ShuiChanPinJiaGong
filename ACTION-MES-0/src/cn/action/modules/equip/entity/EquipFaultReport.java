package cn.action.modules.equip.entity;

import cn.action.common.persistence.DataEntity;

public class EquipFaultReport extends DataEntity<EquipFaultReport> {
    private static final long serialVersionUID = 1L;

    private String equipId;
    private String equipNo;
    private String equipType;
    private String equipLoc;
    private String faultDesc;
    private String status;
    private String reportPerson;
    private String assignTime;
    private String maintenanceWorker;
    private EquipRepair equipRepair;//Î¬ÐÞ±¨¸æ

    public EquipFaultReport(){
        super();
        this.equipRepair= new EquipRepair();
    }

    public String getEquipId() {
        return equipId;
    }

    public String getEquipNo() {
        return equipNo;
    }

    public String getEquipType() {
        return equipType;
    }

    public String getEquipLoc() {
        return equipLoc;
    }

    public String getFaultDesc() {
        return faultDesc;
    }

    public String getStatus() {
        return status;
    }

    public String getReportPerson() {
        return reportPerson;
    }

    public String getAssignTime() {
        return assignTime;
    }

    public String getMaintenanceWorker() {
        return maintenanceWorker;
    }

    public EquipRepair getEquipRepair() {
        return equipRepair;
    }

    public void setEquipId(String equipId) {
        this.equipId = equipId;
    }

    public void setEquipNo(String equipNo) {
        this.equipNo = equipNo;
    }

    public void setEquipType(String equipType) {
        this.equipType = equipType;
    }

    public void setEquipLoc(String equipLoc) {
        this.equipLoc = equipLoc;
    }

    public void setFaultDesc(String faultDesc) {
        this.faultDesc = faultDesc;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setReportPerson(String reportPerson) {
        this.reportPerson = reportPerson;
    }

    public void setAssignTime(String assignTime) {
        this.assignTime = assignTime;
    }

    public void setMaintenanceWorker(String maintenanceWorker) {
        this.maintenanceWorker = maintenanceWorker;
    }

    public void setEquipRepair(EquipRepair equipRepair) {
        this.equipRepair = equipRepair;
    }
}
