package cn.action.modules.kpi.service;

import cn.action.common.service.CrudService;
import cn.action.modules.kpi.dao.CutPieceDao;
import cn.action.modules.kpi.entity.CutPiece;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class CutPieceService extends CrudService<CutPieceDao, CutPiece> {

}
