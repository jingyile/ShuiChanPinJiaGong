package cn.action.modules.bas.service;

import cn.action.common.service.CrudService;
import cn.action.modules.bas.dao.WorkShopDao;
import cn.action.modules.bas.entity.WorkShop;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class WorkShopService extends CrudService<WorkShopDao, WorkShop> {
}
