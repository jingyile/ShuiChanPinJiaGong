package cn.action.modules.bas.service;

import cn.action.common.service.CrudService;
import cn.action.modules.bas.dao.MaterialDao;
import cn.action.modules.bas.entity.Material;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly =true)
public class MaterialService extends CrudService<MaterialDao, Material> {
    @Autowired
    private MaterialDao materialDao;
    public double findSum(Material material) {
        return materialDao.findSum(material).getSum();
    }
}

