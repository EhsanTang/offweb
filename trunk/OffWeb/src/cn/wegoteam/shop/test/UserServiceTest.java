package cn.wegoteam.shop.test;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.wegoteam.shop.inter.UserServiceInter;
import cn.wegoteam.shop.po.User;
import cn.wegoteam.shop.util.DataUtils;
import cn.wegoteam.shop.util.MD5;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class UserServiceTest {
	@Resource(name = "userService")
	private UserServiceInter userService;
	@Test
	public void saveUserTest() {
		User user = new User();
		user.setId(2);
		user.setName("ddd");
		String str = userService.save(user);
		System.out.println(str);
	}
	@Test
	public void updateUser(){
		int message=0;
		List<User> us=userService.findByHql("from User u where u.email=:email", DataUtils.getMap("email","1340760685@qq.com"));
		if(us!=null&&us.size()>0){
			User user=us.get(0);
			User u=new User();
			u.setId(user.getId());
			u.setPassword("000000");
			message=userService.updateBySql(u);
			//message=userService.executeSql("update user u set u.password=:password where u.id=:id", DataUtils.getMap("password",MD5.encrytMD5("111111"),"id",user.getId()));
		}
		System.out.println(message+"");
	}

}
