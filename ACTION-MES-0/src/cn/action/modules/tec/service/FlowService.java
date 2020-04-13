package cn.action.modules.tec.service;

import cn.action.common.service.CrudService;
import cn.action.modules.tec.dao.FlowDao;
import cn.action.modules.tec.entity.Flow;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class FlowService extends CrudService<FlowDao, Flow> {
}
