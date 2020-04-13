package cn.action.modules.sys.dao;

import java.util.List;

import cn.action.common.persistence.CrudDao;
import cn.action.modules.sys.entity.Dict;
/**
 * ×ÖµäDAO½Ó¿Ú
 * @author Administrator
 *
 */
public interface DictDao extends CrudDao<Dict> {

	public List<String> findTypeList(Dict dict);
	
}

