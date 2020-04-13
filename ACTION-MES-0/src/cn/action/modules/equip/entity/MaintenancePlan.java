package cn.action.modules.equip.entity;

import cn.action.common.persistence.DataEntity;
import cn.action.modules.sys.entity.User;

public class MaintenancePlan extends DataEntity<MaintenancePlan> {
    private static final long serialVersionUID = 1L;

    private  String equipType;//�豸����
    private String maintenance;//��������
    private  String cycle;//����
    private  int warnTime;//Ԥ��ʱ�䣬����
    private User user;//�����ˣ��������

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
