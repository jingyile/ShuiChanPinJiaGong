package cn.action.modules.back.entity;

import cn.action.common.persistence.DataEntity;

//����׷��
public class OrderBack extends DataEntity<OrderBack> {
    private static final long serialVersionUID = 1L;
    private String orderCode;//������
    private String orderNo;//������
    private String indentor;//������
    private String productName;//��Ʒ����
    private String quantity;//����
    private String unit;//��λ
    private String orderDate;//������
    private String salesman;//������

    public String getOrderCode() {
        return orderCode;
    }

    public void setOrderCode(String orderCode) {
        this.orderCode = orderCode;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public String getIndentor() {
        return indentor;
    }

    public void setIndentor(String indentor) {
        this.indentor = indentor;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public String getSalesman() {
        return salesman;
    }

    public void setSalesman(String salesman) {
        this.salesman = salesman;
    }
}
