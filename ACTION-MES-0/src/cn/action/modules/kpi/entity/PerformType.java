package cn.action.modules.kpi.entity;

import cn.action.common.persistence.DataEntity;

public class PerformType extends DataEntity<PerformType> {
    /**
     *
     */
    private static final long serialVersionUID=1L;

    private String performTypeName;//绩效名称
    private double performTypeNum;//绩效数量
    private String performTypeUnit;//绩效单位

    public String getPerformTypeName() {
        return performTypeName;
    }

    public void setPerformTypeName(String performTypeName) {
        this.performTypeName = performTypeName;
    }

    public double getPerformTypeNum() {
        return performTypeNum;
    }

    public void setPerformTypeNum(double performTypeNum) {
        this.performTypeNum = performTypeNum;
    }

    public String getPerformTypeUnit() {
        return performTypeUnit;
    }

    public void setPerformTypeUnit(String performTypeUnit) {
        this.performTypeUnit = performTypeUnit;
    }
}
