package cn.action.modules.back.entity;

import cn.action.common.persistence.DataEntity;
import cn.action.modules.bas.entity.Bom;
import cn.action.modules.bas.entity.BomDetail;
import cn.action.modules.bas.entity.Product;
//����׷��ʵ��
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
    private String lotNumber;//����
    private String productName;//��Ʒ����
//    private String bomName;//Bom����
    private String mType;//��������
    private String mNum;//��������
    private String unit;//��λ

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
