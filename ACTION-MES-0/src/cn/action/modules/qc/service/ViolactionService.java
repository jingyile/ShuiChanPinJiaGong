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
     * 保存
     * @param violaction
     * @return
     */



    public boolean saveViolacion(Violaction violaction){
        //将违规记录中的工站对应的工序对象添加到该对象中
        processStationService.findProcessStationByStation(violaction.getWorkStationInfos());
        //如果对象为空，说明没有匹配的工序，就不能添加违规记录
        if(processStation==null){
            return false;
        }

        violaction.setProcess(processStation.getProcess());
        this.save(violaction);
        return true;

    }
}
