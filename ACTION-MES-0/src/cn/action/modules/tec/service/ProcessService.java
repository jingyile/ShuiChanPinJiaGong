package cn.action.modules.tec.service;

import cn.action.common.service.CrudService;
import cn.action.modules.tec.dao.ProcessDao;
import cn.action.modules.tec.entity.Process;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class ProcessService extends CrudService<ProcessDao, Process> {
}
