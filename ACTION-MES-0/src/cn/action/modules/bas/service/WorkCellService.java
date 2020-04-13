package cn.action.modules.bas.service;

import cn.action.common.service.CrudService;
import cn.action.modules.bas.dao.WorkCellDao;
import cn.action.modules.bas.entity.WorkCell;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly=true)
public class WorkCellService extends CrudService<WorkCellDao, WorkCell> {

}