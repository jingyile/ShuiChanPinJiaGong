package cn.action.modules.equip.entity;

import cn.action.common.persistence.DataEntity;
import cn.action.modules.sys.entity.User;

public class MaintenancePlan extends DataEntity<MaintenancePlan> {
    private static final long serialVersionUID = 1L;

    private  String equipType;//设备类型
    private String maintenance;//保养内容
    private  String cycle;//周期
    private  int warnTime;//预警时间，天数
    private User user;//保养人，外键对象

    public MaintenancePlan() {
        super();
        this.user= new User();
    }
    public String getEquipType() {
        return equipType;
    }

    public String getMaintenance() {
        return maintenance;
    }

    public String getCycle() {
        return cycle;
    }

    public int getWarnTime() {
        return warnTime;
    }

    public User getUser() {
        return user;
    }

    public void setEquipType(String equipType) {
        this.equipType = equipType;
    }

    public void setMaintenance(String maintenance) {
        this.maintenance = maintenance;
    }

    public void setCycle(String cycle) {
        this.cycle = cycle;
    }

    public void setWarnTime(int warnTime) {
        this.warnTime = warnTime;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
