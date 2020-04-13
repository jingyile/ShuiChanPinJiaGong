package cn.action.modules.sys.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.action.common.service.TreeService;
import cn.action.modules.sys.dao.AreaDao;
import cn.action.modules.sys.entity.Area;

@Service
@Transactional(readOnly = true)
public class AreaService extends TreeService<AreaDao, Area> {

	public List<Area> findAll(){
		return dao.findAllList(new Area());
	}

	@Transactional(readOnly = false)
	public void save(Area area) {
		super.save(area);
		//UserUtils.removeCache(UserUtils.CACHE_AREA_LIST);
	}
	
	@Transactional(readOnly = false)
	public void delete(Area area) {
		super.delete(area);
		//UserUtils.removeCache(UserUtils.CACHE_AREA_LIST);
	}
	
}