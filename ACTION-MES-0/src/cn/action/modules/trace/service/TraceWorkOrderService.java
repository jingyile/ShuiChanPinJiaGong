package cn.action.modules.trace.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.action.common.service.CrudService;
import cn.action.modules.trace.dao.TraceWorkOrderDao;
import cn.action.modules.trace.entity.TraceWorkOrder;
@Service
@Transactional(readOnly=true)
public class TraceWorkOrderService extends CrudService<TraceWorkOrderDao,TraceWorkOrder>{

}

