package cn.wegoteam.shop.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.wegoteam.shop.inter.BaseDaoInter;
import cn.wegoteam.shop.inter.SettingServiceInter;
import cn.wegoteam.shop.po.Setting;

@Service
public class SettingService extends BaseService<Setting> implements
		SettingServiceInter {
	@Resource(name="settingDao")
	public void setBaseDao(BaseDaoInter<Setting> baseDao) {
		super.setBaseDao(baseDao);
	}
}
