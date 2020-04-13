package cn.action.modules.bas.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.action.common.service.CrudService;
import cn.action.modules.bas.dao.CardReaderDao;
import cn.action.modules.bas.entity.CardReader;

@Service
@Transactional(readOnly=true)
public class CardReaderService extends CrudService<CardReaderDao, CardReader> {
	
}
