package cn.action.modules.kpi.service;

import cn.action.common.service.CrudService;
import cn.action.modules.kpi.dao.PerformStationDao;
import cn.action.modules.kpi.entity.PerformStation;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class PerformStationService extends CrudService<PerformStationDao, PerformStation> {
}
