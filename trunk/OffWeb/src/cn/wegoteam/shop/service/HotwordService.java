package cn.wegoteam.shop.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.wegoteam.shop.inter.BaseDaoInter;
import cn.wegoteam.shop.inter.HotwordServiceInter;
import cn.wegoteam.shop.po.Hotword;

@Service
public class HotwordService extends BaseService<Hotword> implements
		HotwordServiceInter {
	@Resource(name="hotwordDao")
	public void setBaseDao(BaseDaoInter<Hotword> baseDao) {
		super.setBaseDao(baseDao);
	}
}
