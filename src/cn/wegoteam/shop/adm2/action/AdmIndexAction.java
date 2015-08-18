package cn.wegoteam.shop.adm2.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import cn.wegoteam.shop.action.BaseAction;
import cn.wegoteam.shop.cache.Cache;
import cn.wegoteam.shop.cache.StaticDataCache;
import cn.wegoteam.shop.inter.HotwordServiceInter;
import cn.wegoteam.shop.inter.NewsServiceInter;
import cn.wegoteam.shop.inter.SettingServiceInter;
import cn.wegoteam.shop.inter.StaticdataServiceInter;
import cn.wegoteam.shop.po.Staticdata;
import cn.wegoteam.shop.po.User;
import cn.wegoteam.shop.polist.Pick;

@ParentPackage("manage")
@Namespace("/")
@Controller
public class AdmIndexAction extends BaseAction<User> {
	/**
	 * p_表示传递的参数表示非model属性?
	 */
	private static final long serialVersionUID = -7214652284224332303L;

	@Autowired
	private StaticdataServiceInter staticdataService;
	@Autowired
	private SettingServiceInter settingService;
	@Autowired
	private NewsServiceInter newsService;
	@Autowired
	private HotwordServiceInter hotwordService;
	private List<Pick> picks = new ArrayList<Pick>();
	private String code = "";// 主键
	private String radio = "";// 是否为单选项
	private String tag = "";
	private String def = "";// 默认选中
	private String jspName;
	private String params;// jsp 参数传递

	// 跳转到JSP页面
	@Action(value = "adminJsp", results = { @Result(name = "success", location = ADMIN
			+ "${jspName}.jsp") })
	public String adminJsp() {
		StringBuilder sb = new StringBuilder();
		if (request.getParameterMap() != null) {
			Iterator<Entry<String, String[]>> iter = request.getParameterMap()
					.entrySet().iterator();
			while (iter.hasNext()) {
				Entry<String, String[]> entry = iter.next();
				for (String param : entry.getValue()) {
					sb.append("&" + entry.getKey() + "=" + param);
				}
			}
		}
		request.setAttribute("params", sb.toString());
		return SUCCESS;
	}

	@Action(value = "clear")
	public void clear() {
		Cache.clear(staticdataService, settingService, newsService, hotwordService);
		writeStringToResponse(SUCCESS+":更新成功");
	}

	@Action(value = "pickOut", results = { @Result(name = SUCCESS, location = ADMIN
			+ "pickOut.jsp") })
	public String pickOut() {
		Pick pick = new Pick();
		pick.setId("");
		pick.setName("------请输入名称----");
		picks.add(pick);
		if (code.equals("STATICDATA")) {
			List<Staticdata> list;
			list = StaticDataCache.getStaticdatas(getParameter("p_code", ""),
					getParameter("p_type", "NO"));
			for (Staticdata o : list) {
				/**** 显示的商品属性必须在商品分内保护的属性内 *****/
				if (!getParameter("p_p_type", "").equals("")) {
					Staticdata sd = StaticDataCache.getStaticdata(getParameter(
							"p_p_type", ""));
					if (!sd.getValue().contains(o.getPcode()))
						continue;
				}
				pick = new Pick();
				pick.setId(o.getCode());
				pick.setName(o.getPcode() + "-" + o.getName());
				picks.add(pick);
			}
		}
		request.setAttribute("iCallBack", getParameter("iCallBack", ""));
		request.setAttribute("iCallBackParam",
				getParameter("iCallBackParam", ""));

		return SUCCESS;
	}

	public List<Pick> getPicks() {
		return picks;
	}

	public void setPicks(List<Pick> picks) {
		this.picks = picks;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getRadio() {
		return radio;
	}

	public void setRadio(String radio) {
		this.radio = radio;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getDef() {
		return def;
	}

	public void setDef(String def) {
		this.def = def;
	}

	public String getJspName() {
		return jspName;
	}

	public void setJspName(String jspName) {
		this.jspName = jspName;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}

}
