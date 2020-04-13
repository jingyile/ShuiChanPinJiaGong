package cn.action.modules.bas.dao;

import cn.action.common.persistence.CrudDao;
import cn.action.modules.bas.entity.WorkStationInfos;

import java.util.List;

public interface WorkStationInfosDao extends CrudDao<WorkStationInfos> {

    //查询没有关联的绩效参数工站
    public List<WorkStationInfos> findNoPerform(WorkStationInfos workStationInfos);

}
