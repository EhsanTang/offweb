package cn.wegoteam.shop.adm.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import cn.crap.utils.DataUtils;
import cn.crap.utils.MyString;
import cn.wegoteam.shop.action.BaseAction;
import cn.wegoteam.shop.inter.NewsServiceInter;
import cn.wegoteam.shop.po.News;
import cn.wegoteam.shop.util.Const;

@ParentPackage("manage")
@Namespace("/")
@Controller
public class AdmNewsAction extends BaseAction<News> {

	private static final long serialVersionUID = -8354033033772698795L;
	@Autowired
	NewsServiceInter newsService;

	// 加载页面数据
	@Action(value = "admLoadNewsList")
	public void loadNewsList() {
		operators = String.format(Const.ADM_ADD_NEW, getClazz(), getClazz());
		if (getParameter("flag").equals("100")) {
			initAdminList(Const.ADMIN_NEWS, Const.NEWS_TOP, operators);
		} else if (getParameter("p_type").equals("PAGE")) {
			initAdminList(Const.ADMIN_NEWS, Const.NEWS_PAGE, operators);
		} else if (getParameter("p_type").equals("INFOR")) {
			initAdminList(Const.ADMIN_NEWS, Const.NEWS_INFOR, operators);
		} else if (getParameter("p_type").equals("PRODUCT")) {
			initAdminList(Const.ADMIN_NEWS, Const.NEWS_PRODUCT, operators);
		} else {
			initAdminList(Const.ADMIN_NEWS, Const.ADMIN_NEWS, operators);
		}
		writeStringToResponse(newsService.getJsonList(pageBean, DataUtils
				.getMap("type", getParameter("p_type"), "flag",
						getParameter("flag")), null, request, paramMap));

	}

	// 修改、添加页面
	@Action(value = "admFindNewsById", results = { @Result(name = SUCCESS, location = ADMIN
			+ "addNews.jsp") })
	public String findNewsById() {
		if (model.getId() != null)
			model = newsService.get(model);
		return SUCCESS;
	}

	// 添加
	@Action(value = "admAddNews")
	public void addNews() {
		if (MyString.isEmpty(model.getTag()))
			model.setTag(null);
		newsService.saveOrUpdate(model);
		writeStringToResponse("[OK]操作成功！");
	}

	// 删除
	@Action(value = "admDeleteNews")
	public void deleteNews() {
		writeStringToResponse(newsService.delete(model) ? Const.OK
				: Const.ERROR + "删除失败");
	}

}
