package cn.action.common.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import cn.action.common.persistence.CrudDao;
import cn.action.common.persistence.DataEntity;
import cn.action.common.persistence.Page;

public class CrudService <D extends CrudDao<T>, T extends DataEntity<T>> extends BaseService {
	
	/**
	 * 持久层对象
	 */
	@Autowired
	protected D dao;
	
	/**
	 * 获取单条数据
	 * @param id
	 * @return
	 */
	public  T get(String id) {
		T t = dao.get(id);
		System.out.println(t);
		return t;
	}
	
	/**
	 * 获取单条数据
	 * @param entity
	 * @return
	 */
	public T get(T entity) {
		return dao.get(entity);
	}
	
	/**
	 * 查询列表数据
	 * @param entity
	 * @return
	 */
	public List<T> findList(T entity) {
		return dao.findList(entity);
	}

	public List<T> findWeek(T entity) {
		return dao.findWeek(entity);
	}
	public List<T> findMonth(T entity) {
		return dao.findMonth(entity);
	}
	public List<T> findYear(T entity) {
		return dao.findYear(entity);
	}
	
	/**
	 * 查询分页数据
	 * @param page 分页对象
	 * @param entity
	 * @return
	 */
	public Page<T> findPage(Page<T> page, T entity) {
		entity.setPage(page);
		page.setList(dao.findList(entity));
		return page;
	}

	/**
	 * 保存数据（插入或更新）
	 * @param entity
	 */
	@Transactional(readOnly = false)
	public void save(T entity) {
		if (entity.getIsNewRecord()){
			entity.preInsert();
			dao.insert(entity);
		}else{
			entity.preUpdate();
			dao.update(entity);
		}
	}
	
	/**
	 * 删除数据
	 * @param entity
	 */
	@Transactional(readOnly = false)
	public void delete(T entity) {
		dao.delete(entity);
	}
	/**
	 * 查询所有数据
	 * @param entity
	 * @return
	 */
	@Transactional(readOnly=false)
	public List<T> findAllList(T entity){
		return dao.findAllList(entity);
	}
}
