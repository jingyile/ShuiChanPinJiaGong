package cn.action.modules.tec.entity;


import cn.action.common.persistence.DataEntity;

public class FlowProcess extends DataEntity<FlowProcess> {
    private static final long serialVersionUID=1L;
    private Flow flow;
    private Process process;
    private int sort;

    //防止数据库查询时这两个外键为空
    public FlowProcess(){
        super();
        this.flow=new Flow();
        this.process=new Process();
    }
    public Flow getFlow() {
        return flow;
    }

    public void setFlow(Flow flow) {
        this.flow = flow;
    }

    public Process getProcess() {
        return process;
    }

    public void setProcess(Process process) {
        this.process = process;
    }

    public int getSort() {
        return sort;
    }

    public void setSort(int sort) {
        this.sort = sort;
    }
}
