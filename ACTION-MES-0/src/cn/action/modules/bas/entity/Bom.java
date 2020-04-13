package cn.action.modules.bas.entity;

import cn.action.common.persistence.DataEntity;

public class Bom extends DataEntity<Bom> {
    private static final long serialVersionUID = 1L;

    private String bomName;
    private String bomVersion;
    private Product product;
    private String status;

    public String getBomName() {
        return bomName;
    }

    public String getBomVersion() {
        return bomVersion;
    }

    public Product getProduct() {
        return product;
    }

    public String getStatus() {
        return status;
    }

    public void setBomName(String bomName) {
        this.bomName = bomName;
    }
    public void setBomVersion(String bomVersion) {
        this.bomVersion = bomVersion;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
