package cn.action.common.utils;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import cn.action.common.service.BaseService;
import cn.action.modules.sys.dao.AreaDao;
import cn.action.modules.sys.dao.MenuDao;
import cn.action.modules.sys.dao.OfficeDao;
import cn.action.modules.sys.dao.RoleDao;
import cn.action.modules.sys.dao.UserDao;
import cn.action.modules.sys.entity.Area;
import cn.action.modules.sys.entity.Menu;
import cn.action.modules.sys.entity.Office;
import cn.action.modules.sys.entity.Role;
import cn.action.modules.sys.entity.User;

public class UserUtils {

	private static UserDao userDao = SpringContextHolder.getBean(UserDao.class);
	private static RoleDao roleDao = SpringContextHolder.getBean(RoleDao.class);
	private static MenuDao menuDao = SpringContextHolder.getBean(MenuDao.class);
	private static AreaDao areaDao = SpringContextHolder.getBean(AreaDao.class);
	private static OfficeDao officeDao = SpringContextHolder.getBean(OfficeDao.class);
	
	public static final String CURRENT_USER = "userCache";
	
	public static final String AUTH_INFO = "authInfo";
	public static final String ROLE_LIST = "roleList";
	public static final String MENU_LIST = "menuList";
	public static final String AREA_LIST = "areaList";
	public static final String OFFICE_LIST = "officeList";
	public static final String OFFICE_ALL_LIST = "officeAllList";
	

	
	
	/**
	 * 获取当前用户
	 * @return 取不到返回 new User()
	 */
	public static User getUser(String id){
		User user = (User)getSessionAttr(CURRENT_USER);
		if(user==null) {
			 user = userDao.get(id);
			 if(user ==null) {
				 return null;
			 }
			 user.setRoleList(roleDao.findList(new Role(user)));
			 putSessionAttr(CURRENT_USER, user);
		}
		return user;
	}
	/**
	 * 获取当前用户
	 * @return 取不到返回 new User()
	 */
	public static User getUser(){
		User user = (User)getSessionAttr(CURRENT_USER);
		if (user!=null){
			return user;
		}
		// 如果没有登录，则返回实例化空的User对象。
		return new User();
	}
	
	public static void putSessionAttr(String key,Object obj) {
		HttpSession session = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest().getSession();
		session.setAttribute(key, obj);
	}
	public static Object getSessionAttr(String key) {
		HttpSession session = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest().getSession();
		return session.getAttribute(key);
	}
	/**
	 * 获取当前用户角色列表
	 * @return
	 */
	public static List<Role> getRoleList(){
		@SuppressWarnings("unchecked")
		List<Role> roleList = (List<Role>)getSessionAttr(ROLE_LIST);
		if (roleList == null){
			User user = getUser();
			if (user.isAdmin()){
				roleList = roleDao.findAllList(new Role());
			}else{
				Role role = new Role();
				role.getSqlMap().put("dsf", BaseService.dataScopeFilter(user.getCurrentUser(), "o", "u"));
				roleList = roleDao.findList(role);
			}
			putSessionAttr(ROLE_LIST, roleList);
		}
		return roleList;
	}
	
	/**
	 * 获取当前用户授权菜单
	 * @return
	 */
	public static List<Menu> getMenuList(){
		@SuppressWarnings("unchecked")
		List<Menu> menuList = (List<Menu>)getSessionAttr(MENU_LIST);
		if (menuList == null){
			User user = getUser();
			if (user.isAdmin()){
				menuList = menuDao.findAllList(new Menu());
			}else{
				Menu m = new Menu();
				m.setUserId(user.getId());
				menuList = menuDao.findByUserId(m);
			}
			putSessionAttr(MENU_LIST, menuList);
		}
		return menuList;
	}
	
	/**
	 * 获取当前用户授权的区域
	 * @return
	 */
	public static List<Area> getAreaList(){
		@SuppressWarnings("unchecked")
		List<Area> areaList = (List<Area>)getSessionAttr(AREA_LIST);
		if (areaList == null){
			areaList = areaDao.findAllList(new Area());
			putSessionAttr(AREA_LIST, areaList);
		}
		return areaList;
	}
	
	
	/**
	 * 获取当前用户有权限访问的部门
	 * @return
	 */
	public static List<Office> getOfficeList(){
		@SuppressWarnings("unchecked")
		List<Office> officeList = (List<Office>)getSessionAttr(OFFICE_LIST);
		if (officeList == null){
			User user = getUser();
			if (user.isAdmin()){
				officeList = officeDao.findAllList(new Office());
			}else{
				Office office = new Office();
				office.getSqlMap().put("dsf", BaseService.dataScopeFilter(user, "a", ""));
				officeList = officeDao.findList(office);
			}
			putSessionAttr(OFFICE_LIST, officeList);
		}
		return officeList;
	}

	/**
	 * 获取当前用户有权限访问的部门
	 * @return
	 */
	public static List<Office> getOfficeAllList(){
		@SuppressWarnings("unchecked")
		List<Office> officeList = (List<Office>)getSessionAttr(OFFICE_LIST);
		if (officeList == null){
			officeList = officeDao.findAllList(new Office());
		}
		return officeList;
	}
}
