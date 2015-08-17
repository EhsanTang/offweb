package cn.wegoteam.shop.service;

import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import cn.wegoteam.shop.inter.BaseDaoInter;
import cn.wegoteam.shop.inter.BaseServiceInter;
import cn.wegoteam.shop.po.BasePo;
import cn.wegoteam.shop.util.DataUtils;
import cn.wegoteam.shop.util.MyString;
import cn.wegoteam.shop.util.PageBean;


public abstract class BaseService<T extends BasePo> implements BaseServiceInter<T> {
	private BaseDaoInter<T> baseDao;
	private Class<T> clazz;
	@SuppressWarnings("unchecked")
	public BaseService() {
		ParameterizedType type = (ParameterizedType) this.getClass()
				.getGenericSuperclass();
		clazz = (Class<T>) type.getActualTypeArguments()[0];
	}

	@Override
	public String save(T model) {
		return baseDao.save(model);
	}
	
	@Override
	public String update(T model) {
		return baseDao.update(model);
	}

	@Override
	public String saveOrUpdate(T model) {
		return baseDao.saveOrUpdate(model);
	}

	@Override
	public String delete(T model) {
		return delete(model.getId());
	}
	
	@Override
	public String delete(Integer id) {
		return baseDao.delete(id);
	}

	@Override
	public T get(T model) {
		if(model==null||model.getId()==null)
			return null;
		return get(model.getId());
	}
	
	@Override
	public T get(Integer id) {
		return baseDao.get(id);
	}
	
	@Override
	public T load(Integer id) {
		return baseDao.load(id);
	}
	
	@Override
	public T load(T model) {
		return baseDao.load(model.getId());
	}

	/*****************************查询数据集合**********************************/
	/*
	 * 根据hql语句查询list集合中的model数据s(non-Javadoc)
	 * 
	 */
	@Override
	public List<T> findByHql(String hql) {
		return this.findByHql(hql, null,null);
	}
	@Override
	public List<T> findByHql(String hql,Map<String,Object> map) {
		return this.findByHql(hql, map,null);
	}
	@Override
	public List<T> findByHql(String hql, Map<String,Object> map ,PageBean pageBean) {
		return this.findByHql(hql, map, pageBean,null);
	}
	@Override
	public List<T> findByHql(String hql, Map<String,Object> map ,PageBean pageBean,String order) {
		return baseDao.findByHql(hql, map, pageBean,order);
	}
	@Override
	public T findUniqueByHql(String hql, Map<String,Object> map){
		return baseDao.findUniqueByHql(hql, map);
	}
	// 获取实体对象的list集合
	@Override
	public List<T> getList(PageBean pageBean, Map<String, Object> map) {
			return getList(pageBean, map,null);
	}
	// 获取排序的实体对象的list集合
	@Override
	public List<T> getList(PageBean pageBean, Map<String, Object> map,String order) {
		String conditions = DataUtils.getHql(map);
		if(pageBean!=null&&pageBean.getTotalPage()==0)
			pageBean.setAllRow(baseDao.getCount(conditions,map));
		return baseDao.findByHql("from " + clazz.getSimpleName()
					+ conditions, map, pageBean, order);
	}
	/*
	 * 返回json格式的数据
	 * 
	 * @see
	 * com.wegoteam.shop.service.BaseService#getJsonList(com.wegoteam.shop.util
	 * .PageBean, java.util.Map, java.lang.String)
	 */
	@Override
	public String getJsonList(PageBean pageBean, Map<String, Object> map,
			String order) {
		return getJsonList(pageBean,map,order,null);
	}
	@Override
	public String getJsonList(PageBean pageBean, Map<String, Object> map,
			String order,HttpServletRequest requset) {
		if(order == null && requset!=null)
		{
			order = " ";
			order+= MyString.isEmpty(requset.getParameter("sortname"))?" id":" "+requset.getParameter("sortname");
			order+= MyString.isEmpty(requset.getParameter("sortorder"))?" desc":" "+requset.getParameter("sortorder");
		}
		List<T> list = new ArrayList<T>();
		list = getList(pageBean, map, order);
		int rowCount = this.getCount(map);
		HashMap<String, Object> tempMap = new HashMap<String, Object>();
		tempMap.put("Total", rowCount);
		tempMap.put("Rows", list);
		
		JsonConfig config = new JsonConfig();
		config.setExcludes(new String[]{"carts","stores","adresses","tblorders","comments"});//除去dept属性
		  
		JSONObject json = JSONObject.fromObject(tempMap, config);
		  
		return json.toString();
	}
	/***************************End:查询数据集合**********************************/
	
	/***************************查询总数量**********************************/
	@Override
	public int getCount(Map<String, Object> map) {
		return baseDao.getCount(map);
	}
	@Override
	public int getCountBySql(String sql,Map<String,Object> map) {
		return baseDao.getCountBySql(sql,map);
	}
	@Override
	public int getCount(String consditions,Map<String,Object> map) {
		return baseDao.getCount(consditions,map);
	}
	/***************************End:查询总数量**********************************/

	@Override
	public List<T> findBySql(String sql,Map<String,Object> map) {
		return baseDao.findBySql(sql,map,null,null);
	}

	@Override
	public List<Object[]> findObjsBySql(String sql,Map<String,Object> map) {
		return baseDao.findObjsBySql(sql,map);
	}

	@Override
	public int executeBySql(String sql,Map<String,Object> map) {
		return baseDao.executeBySql(sql,map);
	}
	@Override
	public int executeByHql(String hql,Map<String,Object> map) {
		return baseDao.executeByHql(hql,map);
	}
	/**************************************/
	public BaseDaoInter<T> getBaseDao() {
		return baseDao;
	}

	@Resource
	public void setBaseDao(BaseDaoInter<T> baseDao) {
		this.baseDao = baseDao;
	}

	

	
}
