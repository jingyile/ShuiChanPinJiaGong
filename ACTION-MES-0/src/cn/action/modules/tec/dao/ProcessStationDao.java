package cn.action.modules.tec.dao;

import java.util.List;

import cn.action.common.persistence.CrudDao;
import cn.action.modules.tec.entity.ProcessStation;

public interface ProcessStationDao extends CrudDao<ProcessStation>{

    public List<ProcessStation> findProcessStationByStationId(ProcessStation ps) ;
}