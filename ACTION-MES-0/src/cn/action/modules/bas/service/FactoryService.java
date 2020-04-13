package cn.action.modules.bas.service;

import cn.action.common.service.CrudService;
import cn.action.modules.bas.dao.FactoryDao;
import cn.action.modules.bas.entity.Factory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)//事务处理：只读
public class FactoryService extends CrudService<FactoryDao, Factory> {
}
