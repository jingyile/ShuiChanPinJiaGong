package cn.action.modules.trace.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.action.common.service.CrudService;
import cn.action.modules.trace.dao.TraceProcessDao;
import cn.action.modules.trace.entity.TraceProcess;
@Service
@Transactional(readOnly=true)
public class TraceProcessService extends CrudService<TraceProcessDao,TraceProcess>{

}

