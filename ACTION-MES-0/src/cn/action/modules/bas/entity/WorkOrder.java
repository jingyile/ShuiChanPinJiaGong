package cn.action.modules.bas.entity;

import cn.action.common.persistence.DataEntity;

public class WorkOrder extends DataEntity<WorkOrder> {
    public WorkOrder()
    {
        super();
        this.order=new Order();
        this.line=new Line();
        this.product=new Product();
    }
    private  Order order;
    private  String orderCode;
    private  String unitName;
    private  String orderType;
    private  int   amount;
    private  String estStartTime;//预计生产时间
    private  String estEndTime;//预计结束
    private  String actStartTime;//实际生产时间
    private  int  inAmount;
    private  int outAmount;
    private  int scrapAmount;//报废数量
    private  String state;
    private  Line line;//所属产线
    private  Product product;//产品


    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public String getOrderCode() {
        return orderCode;
    }

    public void setOrderCode(String orderCode) {
        this.orderCode = orderCode;
    }

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }

    public String getOrderType() {
        return orderType;
    }

    public void setOrderType(String orderType) {
        this.orderType = orderType;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getEstStartTime() {
        return estStartTime;
    }

    public void setEstStartTime(String estStartTime) {
        this.estStartTime = estStartTime;
    }

    public String getEstEndTime() {
        return estEndTime;
    }

    public void setEstEndTime(String estEndTime) {
        this.estEndTime = estEndTime;
    }

    public String getActStartTime() {
        return actStartTime;
    }

    public void setActStartTime(String actStartTime) {
        this.actStartTime = actStartTime;
    }

    public int getInAmount() {
        return inAmount;
    }

    public void setInAmount(int inAmount) {
        this.inAmount = inAmount;
    }

    public int getOutAmount() {
        return outAmount;
    }

    public void setOutAmount(int outAmount) {
        this.outAmount = outAmount;
    }

    public int getScrapAmount() {
        return scrapAmount;
    }

    public void setScrapAmount(int scrapAmount) {
        this.scrapAmount = scrapAmount;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Line getLine() {
        return line;
    }

    public void setLine(Line line) {
        this.line = line;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
