package cn.action.modules.bas.service;

import cn.action.common.service.CrudService;
import cn.action.modules.bas.dao.CellEmployeeDao;
import cn.action.modules.bas.entity.CellEmployee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly=true)
public class CellEmployeeService  extends CrudService<CellEmployeeDao, CellEmployee> {
//员工和工位逻辑
   @Autowired
    private CellEmployeeDao cellEmployeeDao;
    public CellEmployee saveRelation(CellEmployee cellEmployee)
    {
        //判断添加or修改
        //添加需判断员工是否已经绑定工位，其他正常
        if("".equals(cellEmployee.getId())) {
            //根据id判断是否绑定工位,绑定则返回关系对象
            CellEmployee relation = cellEmployeeDao.findbyEmployeeId(cellEmployee);
            if (relation!= null) {
                return relation;
            }
        }
        this.save(cellEmployee);
        return null;
    }
}
