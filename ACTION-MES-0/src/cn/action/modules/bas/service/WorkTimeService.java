package cn.action.modules.bas.service;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.action.common.service.CrudService;
import cn.action.modules.bas.dao.WorkTimeDao;
import cn.action.modules.bas.entity.WorkTime;

@Service
@Transactional(readOnly=true)
public class WorkTimeService extends CrudService<WorkTimeDao,WorkTime>{
	
}
