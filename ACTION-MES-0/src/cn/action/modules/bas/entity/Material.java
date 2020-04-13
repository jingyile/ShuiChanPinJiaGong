package cn.action.modules.bas.entity;

import cn.action.common.persistence.DataEntity;

public class Material extends DataEntity<Material> {

    private static final long serialVersionUID = 1L;

    private String batchNum;
    private String mType;
    private String mName;
    private String supplierName;
    private String supplierId;
    private String purchaseDate;
    private double quantity;
    private String unit;

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getUnit() {
        return unit;
    }

    private double sum;//ÊýÁ¿»ã×Ü

    public double getSum() {
        return sum;
    }

    public void setSum(double sum) {
        this.sum = sum;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getBatchNum() {
        return batchNum;
    }

    public String getmType() {
        return mType;
    }

    public String getmName() {
        return mName;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public String getSupplierId() {
        return supplierId;
    }

    public String getPurchaseDate() {
        return purchaseDate;
    }

    public double getQuantity() {
        return quantity;
    }



    public void setBatchNum(String batchNum) {
        this.batchNum = batchNum;
    }

    public void setmType(String mType) {
        this.mType = mType;
    }

    public void setmName(String mName) {
        this.mName = mName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }

    public void setSupplierId(String supplierId) {
        this.supplierId = supplierId;
    }

    public void setPurchaseDate(String purchaseDate) {
        this.purchaseDate = purchaseDate;
    }

    public void setQuantity(double quantity) {
        this.quantity = quantity;
    }


}
