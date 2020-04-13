package cn.action.modules.qc.service;

        import org.springframework.stereotype.Service;
        import org.springframework.transaction.annotation.Transactional;

        import cn.action.common.service.CrudService;
        import cn.action.modules.qc.dao.CutPieceYieldDao;
        import cn.action.modules.qc.entity.CutPieceYield;
@Service
@Transactional(readOnly=true)
public class CutPieceYieldService extends CrudService<CutPieceYieldDao, CutPieceYield>{

}
