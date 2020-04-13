package cn.action.modules.qc.entity;

import cn.action.common.persistence.DataEntity;
import cn.action.modules.bas.entity.WorkStationInfos;
import cn.action.modules.tec.entity.Process;

/**
 * Created by fzw on 2019/9/10.
 * 违规记录类
 */
public class Violaction extends DataEntity<Violaction> {

    private static final long serialVersionUID = 1L;

    private WorkStationInfos workStationInfos;//工站外键
    private Process process;//工序外键
    private String userName;//违规人员
    private String violationDes;//违规描述
    private String violationTime;//违规时间

    public Violaction(){
        super();
        this.workStationInfos=new WorkStationInfos();
        this.process=new Process();
    }

    public WorkStationInfos getWorkStationInfos() {
        return workStationInfos;
    }

    public void setWorkStationInfos(WorkStationInfos workStationInfos) {
        this.workStationInfos = workStationInfos;
    }

    public Process getProcess() {
        return process;
    }

    public void setProcess(Process process) {
        this.process = process;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getViolationDes() {
        return violationDes;
    }

    public void setViolationDes(String violationDes) {
        this.violationDes = violationDes;
    }

    public String getViolationTime() {
        return violationTime;
    }

    public void setViolationTime(String violationTime) {
        this.violationTime = violationTime;
    }
}
