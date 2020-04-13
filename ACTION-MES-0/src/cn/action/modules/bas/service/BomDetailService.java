package cn.action.modules.bas.service;

import cn.action.common.service.CrudService;
import cn.action.modules.bas.dao.BomDetailDao;
import cn.action.modules.bas.entity.BomDetail;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class BomDetailService extends CrudService<BomDetailDao,BomDetail> {
}
