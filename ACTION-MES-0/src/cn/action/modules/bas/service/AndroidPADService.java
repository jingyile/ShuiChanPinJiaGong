package cn.action.modules.bas.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.action.common.service.CrudService;
import cn.action.modules.bas.dao.AndroidPADDao;
import cn.action.modules.bas.entity.AndroidPAD;

@Service
@Transactional(readOnly=true)
public class AndroidPADService extends CrudService<AndroidPADDao, AndroidPAD> {

}
