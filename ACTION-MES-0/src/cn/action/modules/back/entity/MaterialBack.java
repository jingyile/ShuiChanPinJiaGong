package cn.action.modules.back.entity;

import cn.action.common.persistence.DataEntity;
import cn.action.modules.bas.entity.Bom;
import cn.action.modules.bas.entity.BomDetail;
import cn.action.modules.bas.entity.Product;
//资料追溯实体
public class MaterialBack extends DataEntity<MaterialBack> {
    private static final long serialVersionUID = 1L;
//    private Bom bom;
//    private BomDetail bomDetail;
//    private Product product;
//    MaterialBack(){
//        this.bom=new Bom();
//        this.bomDetail=new BomDetail();
//        this.product=new Product();
//    }
    private String lotNumber;//批次
    private String productName;//产品名称
//    private String bomName;//Bom名称
    private String mType;//材料类型
    private String mNum;//材料数量
    private String unit;//单位

    public String getLotNumber() {
        return lotNumber;
    }

    public void setLotNumber(String lotNumber) {
        this.lotNumber = lotNumber;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getmType() {
        return mType;
    }

    public void setmType(String mType) {
        this.mType = mType;
    }

    public String getmNum() {
        return mNum;
    }

    public void setmNum(String mNum) {
        this.mNum = mNum;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }
}
