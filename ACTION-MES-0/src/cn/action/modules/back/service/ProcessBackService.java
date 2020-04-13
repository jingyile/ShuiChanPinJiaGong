package cn.action.modules.back.service;

import cn.action.common.service.CrudService;
import cn.action.modules.back.dao.ProcessBackDao;
import cn.action.modules.back.entity.ProcessBack;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class ProcessBackService extends CrudService<ProcessBackDao, ProcessBack> {
}
