package cn.action.modules.back.service;

import cn.action.common.service.CrudService;
import cn.action.modules.back.dao.MaterialBackDao;
import cn.action.modules.back.entity.MaterialBack;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class MaterialBackService extends CrudService<MaterialBackDao, MaterialBack> {
}
