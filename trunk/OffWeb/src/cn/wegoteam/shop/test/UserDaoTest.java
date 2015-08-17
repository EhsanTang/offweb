package cn.wegoteam.shop.test;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import cn.wegoteam.shop.dao.UserDao;
import cn.wegoteam.shop.po.User;
import cn.wegoteam.shop.util.MD5;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:applicationContext.xml")
public class UserDaoTest {
   @Resource(name="userDao")
   private UserDao userDao;
   @Transactional
   @Test
   @Rollback
   public void saveUserTest(){
	   User user=new User();
	   user.setName("Hardy");
	   user.setPassword(MD5.encrytMD5("admin"));
	   user.setPhone("15620633948");
	   user.setEmail("1340760685@qq.com");
	   String str=userDao.save(user);
	   System.out.println(str);
   }
   

}
