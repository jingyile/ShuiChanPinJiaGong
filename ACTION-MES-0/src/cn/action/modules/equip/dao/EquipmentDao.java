package cn.action.modules.equip.dao;

import cn.action.common.persistence.CrudDao;
import cn.action.modules.equip.entity.Equipment;

public interface EquipmentDao extends CrudDao<Equipment> {

    public Equipment getByQRCode(Equipment equipment);
}
