package cn.action.modules.qc.service;

import cn.action.common.service.CrudService;
import cn.action.modules.qc.dao.ViolactionDao;
import cn.action.modules.qc.entity.Violaction;
import cn.action.modules.tec.entity.ProcessStation;
import cn.action.modules.tec.service.ProcessStationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by fzw on 2019/9/10.
 */
@Service
@Transactional(readOnly = true)
public class ViolactionService extends CrudService<ViolactionDao,Violaction> {
    private ProcessStation processStation;
    @Autowired
    private ProcessStationService processStationService;
    /**
     * ����
     * @param violaction
     * @return
     */



    public boolean saveViolacion(Violaction violaction){
        //��Υ���¼�еĹ�վ��Ӧ�Ĺ��������ӵ��ö�����
        processStationService.findProcessStationByStation(violaction.getWorkStationInfos());
        //�������Ϊ�գ�˵��û��ƥ��Ĺ��򣬾Ͳ������Υ���¼
        if(processStation==null){
            return false;
        }

        violaction.setProcess(processStation.getProcess());
        this.save(violaction);
        return true;

    }
}
