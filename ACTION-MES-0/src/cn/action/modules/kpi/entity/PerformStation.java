package cn.action.modules.kpi.entity;

import cn.action.common.persistence.DataEntity;
import cn.action.modules.bas.entity.WorkStationInfos;

/**
 * 绩效参数与工站关系实体类
 */
public class PerformStation extends DataEntity<PerformStation> {
    /**
     *
     */
    private static final long serialVersionUID = 1L;
    private PerformType performType;//绩效参数对象
    private WorkStationInfos workStationInfos;//工站对象

    public PerformStation(){
        this.performType=new PerformType();
        this.workStationInfos=new WorkStationInfos();
    }

    public PerformType getPerformType() {
        return performType;
    }

    public void setPerformType(PerformType performType) {
        this.performType = performType;
    }

    public WorkStationInfos getWorkStationInfos() {
        return workStationInfos;
    }

    public void setWorkStationInfos(WorkStationInfos workStationInfos) {
        this.workStationInfos = workStationInfos;
    }
}
