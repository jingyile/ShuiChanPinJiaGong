package cn.action.modules.bas.service;

import cn.action.common.service.CrudService;
import cn.action.modules.bas.dao.WorkStationInfosDao;
import cn.action.modules.bas.entity.WorkStationInfos;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
public class WorkStationInfosService extends CrudService<WorkStationInfosDao, WorkStationInfos> {
    public List<WorkStationInfos> findNoPerform(WorkStationInfos workStationInfos){
        return this.dao.findNoPerform(workStationInfos);
    }
}
