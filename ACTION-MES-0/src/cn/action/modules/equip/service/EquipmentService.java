package cn.action.modules.equip.service;

import cn.action.common.service.CrudService;
import cn.action.modules.equip.dao.EquipmentDao;
import cn.action.modules.equip.entity.Equipment;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class EquipmentService extends CrudService<EquipmentDao, Equipment> {
    /**
     * �����豸��Ų�ѯ
     * @param equipment
     * @return
     */
    public Equipment getByQRCode(Equipment equipment){
        return this.dao.getByQRCode(equipment);
    }
}
