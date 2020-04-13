package cn.action.modules.bas.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.action.common.service.CrudService;
import cn.action.modules.bas.dao.ElectronSteelYardDao;
import cn.action.modules.bas.entity.ElectronSteelYard;

@Service
@Transactional(readOnly=true)
public class ElectronSteelYardService extends CrudService<ElectronSteelYardDao, ElectronSteelYard> {
	
}
