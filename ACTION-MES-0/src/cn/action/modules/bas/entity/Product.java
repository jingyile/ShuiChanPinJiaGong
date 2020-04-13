package cn.action.modules.bas.entity;

import cn.action.common.persistence.DataEntity;
import cn.action.modules.tec.entity.Flow;

public class Product extends DataEntity<Product> {

    private static final long serialVersionUID = 1L;
    private String productName;
    private String productAbbr;
    private String productDesc;
    private String firstCheck;
    private String qrCode;
    private String manageWay;
    private String lotNumber;
    private String state;
    private String productUnit;
    private String productProp;
    private Flow flow;

    public Flow getFlow() {
        return flow;
    }

    public void setFlow(Flow flow) {
        this.flow = flow;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getProductName() {
        return productName;
    }

    public String getProductAbbr() {
        return productAbbr;
    }

    public String getProductDesc() {
        return productDesc;
    }

    public String getFirstCheck() {
        return firstCheck;
    }

    public String getQrCode() {
        return qrCode;
    }

    public String getManageWay() {
        return manageWay;
    }

    public String getLotNumber() {
        return lotNumber;
    }

    public String getState() {
        return state;
    }

    public String getProductUnit() {
        return productUnit;
    }

    public String getProductProp() {
        return productProp;
    }


    public void setProductName(String productName) {
        this.productName = productName;
    }

    public void setProductAbbr(String productAbbr) {
        this.productAbbr = productAbbr;
    }

    public void setProductDesc(String productDesc) {
        this.productDesc = productDesc;
    }

    public void setFirstCheck(String firstCheck) {
        this.firstCheck = firstCheck;
    }

    public void setQrCode(String qrCode) {
        this.qrCode = qrCode;
    }

    public void setManageWay(String manageWay) {
        this.manageWay = manageWay;
    }

    public void setLotNumber(String lotNumber) {
        this.lotNumber = lotNumber;
    }

    public void setState(String state) {
        this.state = state;
    }

    public void setProductUnit(String productUnit) {
        this.productUnit = productUnit;
    }

    public void setProductProp(String productProp) {
        this.productProp = productProp;
    }

}
