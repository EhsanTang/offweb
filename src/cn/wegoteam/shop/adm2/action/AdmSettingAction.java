package cn.wegoteam.shop.adm2.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import cn.crap.utils.DataUtils;
import cn.wegoteam.shop.action.BaseAction;
import cn.wegoteam.shop.cache.Cache;
import cn.wegoteam.shop.inter.SettingServiceInter;
import cn.wegoteam.shop.po.Setting;
import cn.wegoteam.shop.util.Const;

@ParentPackage("manage")
@Namespace("/")
@Controller
public class AdmSettingAction extends BaseAction<Setting> {

	private static final long serialVersionUID = -1709989379813828965L;
	@Autowired
	SettingServiceInter settingService;

	@Action(value = "admLoadSettingList")
	public void loadSettingList() {
		operators = String.format(Const.ADM_ADD_NEW, getClazz(), getClazz());
		initAdminList(Const.ADMIN_SETTING, Const.SETTING_LIST, operators);
		writeStringToResponse(settingService.getJsonList(pageBean,
				DataUtils.getMap(), null, request, paramMap));
	}

	@Action(value = "admFindSettingById", results = { @Result(name = SUCCESS, location = ADMIN
			+ "addSetting.jsp") })
	public String findSettingById() {
		model = settingService.get(model);
		return SUCCESS;
	}

	@Action(value = "admAddSetting")
	public void addSetting() {
		/**
		 * 非最高管理员不能修改验证脚本
		 */
		if (!isSuperAdmin() && model.getId() != null) {
			model.setVerify(settingService.get(model).getVerify());
		}
		settingService.saveOrUpdate(model);
		Cache.setSetting(model);
		writeStringToResponse("[OK]操作成功");
	}

	@Action(value = "admDeleteSetting")
	public void deleteSetting() {
		writeStringToResponse(settingService.delete(model) ? Const.OK
				: Const.ERROR + "删除失败");
	}

	/****************************************************** get() and set() ***********************************/

}
