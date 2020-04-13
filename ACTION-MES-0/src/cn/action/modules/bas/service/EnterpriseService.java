package cn.action.modules.bas.service;

import cn.action.common.service.CrudService;
import cn.action.modules.bas.dao.EnterpriseDao;
import cn.action.modules.bas.entity.Enterprise;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

//∆Û“µService
@Service
@Transactional(readOnly = true)
public class EnterpriseService extends CrudService<EnterpriseDao,Enterprise> {
}
