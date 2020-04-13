package cn.action.modules.kpi.service;

import cn.action.common.service.CrudService;
import cn.action.modules.kpi.entity.PerformType;
import cn.action.modules.kpi.dao.PerformTypeDao;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class PerformTypeService extends CrudService<PerformTypeDao,PerformType> {

}
