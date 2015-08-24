package cn.wegoteam.shop.action;

import org.apache.commons.lang.StringUtils;
import cn.wegoteam.shop.cache.Cache;
import cn.wegoteam.shop.cache.StaticDataCache;
import cn.wegoteam.shop.po.User;
import cn.wegoteam.shop.util.Const;


public abstract class BaseAction<T> extends cn.crap.base.BaseAction<T>{

	private String p;
	public String getP() {
		String paths[] = p.split("\\.");
		String page = paths[paths.length-1];
		//防止主题切换导致页面不可用
		if(page.startsWith("detail")){
			String subject = Cache.getSetting(Const.SUBJECT).getValue();
			String pages = StaticDataCache.getStaticdata(subject).getValue();
			if(pages.indexOf(","+page+",")<0){
				paths[paths.length-1] = "detail";
			}
		}
		return StringUtils.join(paths,"\\");
	}
	public String getSubject(){
		return Cache.getSetting(Const.SUBJECT).getValue();
	}
	public void setP(String p) {
		this.p = p;
	}
	public BaseAction(){
		//paramMap.put(Const.SUBJECT, Cache.getSetting(Const.SUBJECT).getValue());
	}
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
	public void initAdminList(String parentPage, String currentPage, String operators){
		 super.initAdminList(operators, StaticDataCache.getStaticdata(parentPage), StaticDataCache.getStaticdata(currentPage));
	}
}
