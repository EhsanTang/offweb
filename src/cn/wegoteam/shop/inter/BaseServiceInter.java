package cn.wegoteam.shop.inter;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.wegoteam.shop.util.PageBean;

public interface BaseServiceInter<T> {
	 //保存一个实体如果保存成功的返回一个标志
	   public String save(T model);
	   public String update(T model);
	   public String saveOrUpdate(T model);
	   public T get(Integer id);
	   public T get(T model);
	   public T load(Integer id);
	   public T load(T model);
	  //删除一个实体
	   public String delete(T model);
	   public String delete(Integer id);
	  
	   //根据hql语句查询出一个集合
	   public List<T> findByHql(String hql);
	   public List<T> findByHql(String hql,Map<String,Object> map);
	   public List<T> findByHql(String hql, Map<String,Object> map, PageBean pageBean);//分页查询出一组实体
	   public List<T> findByHql(String hql, Map<String, Object> map, PageBean pageBean,String order);
	   public List<T> findBySql(String sql,Map<String,Object> map);//执行sql语句进行查询
	   public List<Object[]> findObjsBySql(String sql,Map<String,Object> map); //查询实体类中的某些属性
	   public String getJsonList(PageBean pageBean,Map<String,Object> map,String order);//返回一个满足一定排序条件的json字符串
	   public String getJsonList(PageBean pageBean, Map<String, Object> map,String order, HttpServletRequest requset);
	   public List<T> getList(PageBean pageBean, Map<String, Object> map);
	   public List<T> getList(PageBean pageBean, Map<String, Object> map, String order);
	   public T findUniqueByHql(String hql, Map<String, Object> map);
	   //查出总的记录数
	   public int getCount(Map<String, Object> map);
	   public int getCountBySql(String sql,Map<String,Object> map);//执行sql语句查找总记录数
	   public int getCount(String conditions, Map<String, Object> map);
	   
	   public int executeByHql(String hql,Map<String,Object> map);
	   public int executeBySql(String sql,Map<String,Object> map);//原生的可执行的sql语句
	   
	
	
	   
	   
	  
}
