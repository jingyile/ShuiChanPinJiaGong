package cn.action.modules.bas.entity;

import cn.action.common.persistence.DataEntity;
import cn.action.modules.sys.entity.Office;

public class MountGuard extends DataEntity<MountGuard> {

    public MountGuard()
    {
        super();
        this.employee=new Employee();
        this.office=new Office();
        this.line=new Line();
        this.workStationInfos=new WorkStationInfos();
        this.workCell=new WorkCell();
    }
         private Employee   employee;
         private Office office;
         private Line   line;
         private WorkStationInfos workStationInfos;
         private WorkCell workCell;
         private  String colockIn;
         private  String colockOff;
         private String workStatus;


    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public Office getOffice() {
        return office;
    }

    public void setOffice(Office office) {
        this.office = office;
    }

    public Line getLine() {
        return line;
    }

    public void setLine(Line line) {
        this.line = line;
    }

    public WorkStationInfos getWorkStationInfos() {
        return workStationInfos;
    }

    public void setWorkStationInfos(WorkStationInfos workStationInfos) {
        this.workStationInfos = workStationInfos;
    }

    public WorkCell getWorkCell() {
        return workCell;
    }

    public void setWorkCell(WorkCell workCell) {
        this.workCell = workCell;
    }

    public String getColockIn() {
        return colockIn;
    }

    public void setColockIn(String colockIn) {
        this.colockIn = colockIn;
    }

    public String getColockOff() {
        return colockOff;
    }

    public void setColockOff(String colockOff) {
        this.colockOff = colockOff;
    }

    public String getWorkStatus() {
        return workStatus;
    }

    public void setWorkStatus(String workStatus) {
        this.workStatus = workStatus;
    }
}
