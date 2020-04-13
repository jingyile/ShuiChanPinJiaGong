package cn.action.modules.tec.entity;

import cn.action.common.persistence.DataEntity;
import cn.action.modules.bas.entity.Line;
import cn.action.modules.bas.entity.WorkStationInfos;

//工序与工站关系
public class ProcessStation extends DataEntity<ProcessStation> {
    private static final long serialVersionUID=1L;
    private  Process process;
    private WorkStationInfos workStationInfos;
    private Line line;


    public ProcessStation(){
        this.process=new Process();
        this.line=new Line();
        this.workStationInfos=new WorkStationInfos();
    }

    public Process getProcess() {
        return process;
    }

    public void setProcess(Process process) {
        this.process = process;
    }

    public WorkStationInfos getWorkStationInfos() {
        return workStationInfos;
    }

    public void setWorkStationInfos(WorkStationInfos workStationInfos) {
        this.workStationInfos = workStationInfos;
    }

    public Line getLine() {
        return line;
    }

    public void setLine(Line line) {
        this.line = line;
    }
}
