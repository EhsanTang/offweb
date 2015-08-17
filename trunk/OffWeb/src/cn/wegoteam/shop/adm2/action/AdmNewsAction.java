package cn.wegoteam.shop.adm2.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import cn.crap.utils.DataUtils;
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
		if (getParameter("p_type").equals("SUGGEST")) {
			initAdminList(Const.ADMIN_NEWS, Const.NEWS_LIST3, operators);
		} else if (getParameter("p_type").equals("PAGE")) {
			initAdminList(Const.ADMIN_NEWS, Const.NEWS_LIST2, operators);
		} else if (getParameter("p_type").equals("INFOR")) {
			initAdminList(Const.ADMIN_NEWS, Const.NEWS_LIST, operators);
		}
		writeStringToResponse(newsService.getJsonList(pageBean, DataUtils
				.getMap("type", getParameter("p_type"), "flag",
						getParameter("p_flag")), null, request, paramMap));

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
