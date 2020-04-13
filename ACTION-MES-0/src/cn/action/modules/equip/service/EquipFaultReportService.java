package cn.action.modules.equip.service;

import cn.action.common.service.CrudService;
import cn.action.common.utils.UserUtils;
import cn.action.modules.equip.dao.EquipFaultReportDao;
import cn.action.modules.equip.entity.EquipFaultReport;
import cn.action.modules.equip.entity.Equipment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class EquipFaultReportService extends CrudService<EquipFaultReportDao, EquipFaultReport> {
    @Autowired
    private EquipmentService equipmentService;

    //保存设备故障上报记录
    public boolean saveFaultReport(EquipFaultReport equipFaultReport){
        //根据设备编号查询是否存在这个设备，如果没有，不能报错，否则设置相应属性并保存
        Equipment equipment = new Equipment();
        equipment.setQrCode(equipFaultReport.getEquipNo());
        Equipment equip =  equipmentService.getByQRCode(equipment);

        if(equip==null){
            return false;
        }
        //设置相关属性
        equipFaultReport.setEquipId(equip.getId());
        equipFaultReport.setReportPerson(UserUtils.getUser().getName());
        equipFaultReport.setStatus("0001");//状态设置为上报


        this.save(equipFaultReport);
        return true;
    }

    /**
     * 判断是否已经派工
     * @param equipFaultReport
     * @return
     */
    public boolean isAssign(EquipFaultReport equipFaultReport){
        EquipFaultReport report = this.get(equipFaultReport);
        if(!report.getStatus().equals("0001")){
            return false;
        }
            return true;
    }

    /**
     * 开工过程
     * @param equipFaultReport
     * @return
     */
    public  String saveStartRepair(EquipFaultReport equipFaultReport){
        String message=null;
        EquipFaultReport report = this.get(equipFaultReport);
        if(report.getStatus().equals("0001")){
            message = "设备已经派工，正在等待维修！";
        }else if(report.getStatus().equals("0003")){
           message = "设备正在维修，不能重复开工！";
        }else if(report.getStatus().equals("0004")){
            message = "设备维修完工！";
        }else{
            //修改状态为维修
            report.setStatus("0003");
            this.save(report);
            message="设备开始维修！";
        }
        return message;
    }
}
