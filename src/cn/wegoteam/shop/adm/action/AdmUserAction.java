package cn.wegoteam.shop.adm.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import cn.crap.utils.DataUtils;
import cn.crap.utils.MD5;
import cn.wegoteam.shop.action.BaseAction;
import cn.wegoteam.shop.cache.Cache;
import cn.wegoteam.shop.inter.UserServiceInter;
import cn.wegoteam.shop.po.User;
import cn.wegoteam.shop.util.Const;

/**
 * 
 * @author ETong
 * 
 */
@ParentPackage("manage")
@Namespace("/")
@Controller
public class AdmUserAction extends BaseAction<User> {

	private static final long serialVersionUID = 938332131280361407L;

	@Autowired
	private UserServiceInter userService;

	// 按照查询的条件查询用户的列表加载用户到前
	@Action(value = "admLoadUserList")
	public void manageLoadUser() {
		operators = String.format(Const.ADM_ADD_NEW, getClazz(), getClazz());
		initAdminList(Const.ADMIN_USER,
				getParameter("p_type").equals("AVERUSER") ? Const.USER_COMMON
						: Const.USER_ADMIN, operators);
		writeStringToResponse(userService.getJsonList(pageBean,
				DataUtils.getMap("type", getParameter("p_type")), null,
				request, paramMap));
	}

	// 添加
	@Action(value = "admAddUser")
	public void addUser() {
		try {
			if (model.getId() == null) {
				model.setPassword(MD5.encrytMD5(model.getPassword()));
				userService.save(model);
			} else {
				if (model.getId().toString()
						.equals(Cache.getSetting(Const.SUPERADINID).getValue())) {
					if (!getSessionUser().getId().equals(model.getId())) {
						writeStringToResponse("[ERROR]权限不够，修改失败");
						return;
					}
				}
				userService.updateBySql(model);
			}
			writeStringToResponse(Const.OK + "操作成功");
		} catch (Exception e) {
			e.printStackTrace();
			writeStringToResponse(Const.ERROR + e.getMessage());
		}
	}

	// 修改、添加
	@Action(value = "admFindUserById", results = { @Result(name = SUCCESS, location = ADMIN
			+ "addUser.jsp") })
	public String manageFindUserById() {
		if (model.getId() != null) {
			model = userService.get(model.getId());
		}
		return SUCCESS;
	}

	// 删除
	@Action(value = "admDeleteUser")
	public void manageDeleteUser() {
		model = userService.get(model.getId());
		writeStringToResponse(userService.delete(model) ? Const.OK
				: Const.ERROR + "删除失败");
	}
}
