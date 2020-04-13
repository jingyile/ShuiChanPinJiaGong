package cn.action.modules.bas.entity;

import cn.action.common.persistence.DataEntity;
import cn.action.modules.sys.entity.Office;

public class Employee extends DataEntity<Employee> {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    private String employeeNo;
    private String employeeName;//员工姓名
    private String workDate;//入职日期
    private String sex;//性别
    private int age;//年龄
    private String telNum;//电话
    private String address;//地址
    private String email;//邮箱
    private String idCard;//身份证号
    private Office office;//外键对象
   // private Organization org;//所属机构
    //private WorkCell cellName;//工位
    //private String status;//状态，（上班、下班、休假、请假、离职）

    public String getEmployeeName() {
        return employeeName;
    }
    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }
    public String getWorkDate() {
        return workDate;
    }
    public void setWorkDate(String workDate) {
        this.workDate = workDate;
    }
    public String getSex() {
        return sex;
    }
    public void setSex(String sex) {
        this.sex = sex;
    }
    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
    }
    public String getTelNum() {
        return telNum;
    }
    public void setTelNum(String telNum) {
        this.telNum = telNum;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getIdCard() {
        return idCard;
    }
    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }
//    public Organization getOrg() {
//        return org;
//    }
//    public void setOrg(Organization org) {
//        this.org = org;
//    }
//    public WorkCell getCellName() {
//        return cellName;
//    }
//    public void setCell(WorkCell cellname) {
//        this.cellName = cellname;
//    }
//    public String getStatus() {
//        return status;
//    }
//    public void setStatus(String status) {
//        this.status = status;
//    }
    public static long getSerialversionuid() {
        return serialVersionUID;
    }

    public Office getOffice() {
        return office;
    }

    public void setOffice(Office office) {
        this.office = office;
    }

    public String getEmployeeNo() {
        return employeeNo;
    }

    public void setEmployeeNo(String employeeNo) {
        this.employeeNo = employeeNo;
    }
}