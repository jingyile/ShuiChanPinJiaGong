package cn.action.modules.bas.service;


import  org.springframework.stereotype.Service;
import  org.springframework.transaction.annotation.Transactional;

import cn.action.common.service.CrudService;
import cn.action.modules.bas.dao.LineDao;
import cn.action.modules.bas.entity.Line;

@Service
@Transactional(readOnly = true)
public class LineService extends CrudService<LineDao, Line> {

}
