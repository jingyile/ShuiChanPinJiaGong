package cn.action.modules.bas.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.action.common.service.CrudService;
import cn.action.modules.bas.dao.CodePrinterDao;
import cn.action.modules.bas.entity.CodePrinter;

@Service
@Transactional(readOnly=true)
public class CodePrinterService extends CrudService<CodePrinterDao, CodePrinter>{

}
