package cn.action.modules.back.service;

import cn.action.common.service.CrudService;
import cn.action.modules.back.dao.OrderBackDao;
import cn.action.modules.back.entity.OrderBack;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class OrderBackService extends CrudService<OrderBackDao, OrderBack> {
}
