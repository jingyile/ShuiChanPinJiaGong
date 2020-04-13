package cn.action.modules.bas.entity;

import cn.action.common.persistence.DataEntity;

public class BomDetail extends DataEntity<BomDetail> {
    private static final long serialVersionUID = 1L;

    private Bom bom;//���
    private String mType;//����
    private Double mNum;//����
    private String unit;

    public Bom getBom() {
        return bom;
    }

    public String getmType() {
        return mType;
    }

    public Double getmNum() {
        return mNum;
    }

    public String getUnit() {
        return unit;
    }

    public void setBom(Bom bom) {
        this.bom = bom;
    }

    public void setmType(String mType) {
        this.mType = mType;
    }

    public void setmNum(Double mNum) {
        this.mNum = mNum;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }
}
