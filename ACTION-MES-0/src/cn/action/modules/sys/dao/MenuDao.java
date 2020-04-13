package cn.action.modules.sys.dao;

import java.util.List;

import cn.action.common.persistence.CrudDao;
import cn.action.modules.sys.entity.Menu;

public interface MenuDao extends CrudDao<Menu> {

	public List<Menu> findByParentIdsLike(Menu menu);

	public List<Menu> findByUserId(Menu menu);
	
	public int updateParentIds(Menu menu);
	
	public int updateSort(Menu menu);
	
}
