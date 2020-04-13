package cn.action.modules.bas.entity;

import cn.action.common.persistence.DataEntity;

public class WorkShop extends DataEntity<WorkShop> {
    private static final long serialVersionUID=1L;

    private String shopName;//车间名称
    private String shopNo;
    private String master;
    private String description;
    private Factory factory;//工厂外键对象
    private String remarks;


    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    public String getShopNo() {
        return shopNo;
    }

    public void setShopNo(String shopNo) {
        this.shopNo = shopNo;
    }

    public String getMaster() {
        return master;
    }

    public void setMaster(String master) {
        this.master = master;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Factory getFactory() {
        return factory;
    }

    public void setFactory(Factory factory) {
        this.factory = factory;
    }

    @Override
    public String getRemarks() {
        return remarks;
    }

    @Override
    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
}
