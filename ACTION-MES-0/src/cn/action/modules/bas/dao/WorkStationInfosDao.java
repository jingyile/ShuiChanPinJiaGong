package cn.action.modules.bas.dao;

import cn.action.common.persistence.CrudDao;
import cn.action.modules.bas.entity.WorkStationInfos;

import java.util.List;

public interface WorkStationInfosDao extends CrudDao<WorkStationInfos> {

    //��ѯû�й����ļ�Ч������վ
    public List<WorkStationInfos> findNoPerform(WorkStationInfos workStationInfos);

}
