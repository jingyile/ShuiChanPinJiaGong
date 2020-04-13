package cn.action.modules.bas.dao;

import cn.action.common.persistence.CrudDao;
import cn.action.modules.bas.entity.Material;

public interface MaterialDao extends CrudDao<Material> {
   //public Material findSum(Material material);
   public Material findSum(Material material);
}
