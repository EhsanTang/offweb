package cn.wegoteam.shop.action;

import cn.wegoteam.shop.cache.Cache;
import cn.wegoteam.shop.cache.StaticDataCache;
import cn.wegoteam.shop.po.User;
import cn.wegoteam.shop.util.Const;


public abstract class BaseAction<T> extends cn.crap.base.BaseAction<T>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void putSessionUser(User user) {
		session.remove(Const.SESS_USER);
		session.put(Const.SESS_USER, user);
	}

	public User getSessionUser() {
		return (User) session.get(Const.SESS_USER);
	}
	public boolean isSuperAdmin(){
		return getSessionUser().getId().toString().equals(Cache.getSetting(Const.SUPERADINID).getValue());
	}
	/**
	 * 初始化后台加载数据
	 */
	public void initAdminList(String parentCode, String currentCode, String operators){
		paramMap.put(Const.ParentPage, StaticDataCache.getStaticdata(parentCode));
		paramMap.put(Const.CurrentPage,StaticDataCache.getStaticdata(currentCode));
		paramMap.put("clazz", getClazz());
		paramMap.put(Const.SortName,getParameter(Const.SortName,"id"));
		paramMap.put(Const.SortOrder,getParameter(Const.SortOrder,"desc").equals("desc") ? Const.ImgSortDesc:Const.ImgSortAsc);
		paramMap.put("operators", operators);
	}

}
