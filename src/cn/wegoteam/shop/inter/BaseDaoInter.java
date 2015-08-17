package cn.wegoteam.shop.inter;

import java.util.List;
import java.util.Map;
import cn.wegoteam.shop.util.PageBean;

public interface BaseDaoInter<T> {
   //保存一个实体如果保存成功的返回一个标志
   public String save(T model);
   public String update(T model);
   public String saveOrUpdate(T model);
   public T get(Integer id);
   public T load(Integer id);
   
   //删除一个实体
   public String delete(Integer id);
   /**
    * hql语句进行的操作
    * 
    **/
   
   //根据hql语句查询出一个集合
   public List<T> findByHql(String hql, Map<String, Object> map, PageBean pageBean,String order);
   public List<T> findBySql(String sql, Map<String, Object> map, PageBean pageBean,String order);
   public List<Object[]> findObjsBySql(String sql,Map<String,Object> map);//查询实体类中的某些属性
   public T findUniqueByHql(String hql, Map<String, Object> map);
   //查出总的记录数
   public int getCount(Map<String, Object> map);
   public int getCount(String conditions, Map<String, Object> map);
   public int getCountBySql(String sql,Map<String,Object> map);//原生sql查出总的记录数
   
 //执行的hql语句
   public int executeByHql(String hql,Map<String,Object> map);
   //原生的可执行的sql语句
   public int executeBySql(String sql,Map<String,Object> map);

}
