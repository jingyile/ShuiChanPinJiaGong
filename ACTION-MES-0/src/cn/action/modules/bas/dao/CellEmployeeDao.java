package cn.action.modules.bas.dao;

import cn.action.common.persistence.CrudDao;
import cn.action.modules.bas.entity.CellEmployee;

public interface CellEmployeeDao extends CrudDao<CellEmployee> {
    //根据员工id查询关系对象
    public CellEmployee findbyEmployeeId(CellEmployee cellEmployee);
 }


