package cn.action.modules.bas.service;

import cn.action.common.service.CrudService;
import cn.action.modules.bas.dao.MountGuardDao;
import cn.action.modules.bas.entity.MountGuard;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional(readOnly=true)
public class MountGuardService extends CrudService<MountGuardDao, MountGuard> {

}