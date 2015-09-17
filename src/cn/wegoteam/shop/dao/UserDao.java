package cn.wegoteam.shop.dao;

import org.springframework.stereotype.Repository;
import cn.crap.base.BaseDao;
import cn.wegoteam.shop.inter.UserDaoInter;
import cn.wegoteam.shop.po.User;

@Repository("userDao")
public class UserDao extends BaseDao<User> implements UserDaoInter {
   
}
