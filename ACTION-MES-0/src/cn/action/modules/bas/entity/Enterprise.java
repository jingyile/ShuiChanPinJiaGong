package cn.action.modules.bas.entity;

import cn.action.common.persistence.DataEntity;

//企业
public class Enterprise extends DataEntity<Enterprise> {

    private static final long serialVersionUID=1L;
    private String enterName;//企业名字
    private String enterCode;
    private String enterLevel;
    private String enterNature;
    private String enterCapital;
    private String enterLperson;
    private String enterLpCard;
    private String enterAddress;
    private String emailCode;
    private String enterRemarks;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getEnterName() {
        return enterName;
    }

    public void setEnterName(String enterName) {
        this.enterName = enterName;
    }

    public String getEnterCode() {
        return enterCode;
    }

    public void setEnterCode(String enterCode) {
        this.enterCode = enterCode;
    }

    public String getEnterLevel() {
        return enterLevel;
    }

    public void setEnterLevel(String enterLevel) {
        this.enterLevel = enterLevel;
    }

    public String getEnterNature() {
        return enterNature;
    }

    public void setEnterNature(String enterNature) {
        this.enterNature = enterNature;
    }

    public String getEnterCapital() {
        return enterCapital;
    }

    public void setEnterCapital(String enterCapital) {
        this.enterCapital = enterCapital;
    }

    public String getEnterLperson() {
        return enterLperson;
    }

    public void setEnterLperson(String enterLperson) {
        this.enterLperson = enterLperson;
    }

    public String getEnterLpCard() {
        return enterLpCard;
    }

    public void setEnterLpCard(String enterLpCard) {
        this.enterLpCard = enterLpCard;
    }

    public String getEnterAddress() {
        return enterAddress;
    }

    public void setEnterAddress(String enterAddress) {
        this.enterAddress = enterAddress;
    }

    public String getEmailCode() {
        return emailCode;
    }

    public void setEmailCode(String emailCode) {
        this.emailCode = emailCode;
    }

    public String getEnterRemarks() {
        return enterRemarks;
    }

    public void setEnterRemarks(String enterRemarks) {
        this.enterRemarks = enterRemarks;
    }
}
