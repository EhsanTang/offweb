package cn.wegoteam.shop.adm2.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import cn.crap.utils.DataUtils;
import cn.wegoteam.shop.action.BaseAction;
import cn.wegoteam.shop.cache.StaticDataCache;
import cn.wegoteam.shop.inter.StaticdataServiceInter;
import cn.wegoteam.shop.po.Staticdata;
import cn.wegoteam.shop.util.Const;

@ParentPackage("manage")
@Namespace("/")
@Controller
public class AdmStaticAction extends BaseAction<Staticdata> {
	private static final long serialVersionUID = -7214652284224332303L;
	@Autowired
	private StaticdataServiceInter staticdataService;

	@Action(value = "admLoadStaticdataList")
	public void loadStaticdataList() {
		operators = String.format(Const.ADM_ADD_NEW, getClazz(), getClazz());
		initAdminList(Const.ADMIN_STATIC,
				getParameter("p_code", "TOP").equals("ALL") ? Const.STATIC_ALL: Const.STATIC_LIST, operators);
		writeStringToResponse(staticdataService.getJsonList(
				pageBean,
				getParameter("p_code", "TOP").equals("ALL") ? null : DataUtils
						.getMap("pcode", getParameter("p_code", "TOP")), null,
				request, paramMap));
	}

	@Action(value = "admFindStaticdataById", results = { @Result(name = SUCCESS, location = ADMIN
			+ "addStaticdata.jsp") })
	public String findStaticdataById() {
		if (model.getId() != null)
			model = staticdataService.get(model.getId());
		return SUCCESS;
	}

	@Action(value = "admAddStaticdata")
	public void addStaticdata() {
		try {
			model.setPcode(model.getPcode().trim());
			model.setCode(model.getCode().trim());
			model.setType(model.getType().trim());
			staticdataService.saveOrUpdate(model);
			StaticDataCache.setStaticdata(model);
			writeStringToResponse(Const.OK + "操作成功");
		} catch (Exception e) {
			e.printStackTrace();
			writeStringToResponse(Const.ERROR + e.getMessage());
		}
	}

	@Action(value = "admDeleteStaticdata")
	public void deleteStaticdata() {
		model = staticdataService.get(model.getId());
		map.put("pcode", model.getCode());
		boolean result = staticdataService.delete(model);
		if (result) {
			StaticDataCache.removeStaticdata(model);
			writeStringToResponse(Const.OK);
		} else
			writeStringToResponse(Const.ERROR + "删除失败");
		// 子元素添加了外键，故删除子元素之前不能删除父元素
	}

	/****************************************************** get() and set() ***********************************/

}
