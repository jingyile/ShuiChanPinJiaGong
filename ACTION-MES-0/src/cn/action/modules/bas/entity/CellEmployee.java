package cn.action.modules.bas.entity;

import cn.action.common.persistence.DataEntity;

public class CellEmployee extends DataEntity<CellEmployee> {

    private static final long serialVersionUID = 1L;
    public CellEmployee(){
        super();
        this.workCell=new WorkCell();
        this.employee=new Employee();
    }
    private WorkCell workCell;
    private Employee employee;



    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }


    public WorkCell getWorkCell() {
        return workCell;
    }

    public void setWorkCell(WorkCell workCell) {
        this.workCell = workCell;
    }
}
