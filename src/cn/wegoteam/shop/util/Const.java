package cn.wegoteam.shop.util;

import cn.wegoteam.shop.util.Const;

public class Const {
    public static final String USER_NAME="userName";
    public static final String USER_PWD="userPassword";
    public static final String REMBER_PWD="remberPwd";
    public static final String SECURITY_CODE="securityCode";
    public static final String FALSE="false";
    public static final String TRUE="true";
    public static final String OK = "[OK]";
	public static final String ERROR = "[ERROR]";
	public static final String RETURNSUCCESS="success";
	public static final String RETURNERROR="error";
	public static final String COMMENT_PRAISE="comment_praise";
	public static final String ParentPage = "ParentPage";
	public static final String CurrentPage = "CurrentPage";
	public static final String SortName = "sortname";
	public static final String SortOrder = "sortorder";
	
	//flag
	public static final int UNUSERABLE = -1;
	//Image
	public static final String ImgSortDesc = "&#xe617;";
	public static final String ImgSortAsc = "&#xe616;";
	public static final String ImgCard ="&#xe637;";
	public static final String ImgExport="&#xe64b;";
	public static final String ImgSearch = "&#xe600;";
	//setting
	public static final String SUBJECT = "SUBJECT";//主题
	
	
	
	public static final String ALIYUNOSSURL="ALIYUNOSSURL";
	public static final String LUCENEURL="LUCENEURL";
	public static final String SMS="SMS";
	public static final String PRINTEXCEPTION="PRINTEXCEPTION";//是否打印异常
	public static final String EXEPTIONEMAILS="EXEPTIONEMAILS";//发送异常的邮箱地址
	public static final String FREEOFLOGISTICS="FREEOFLOGISTICS";//免运费最低金额
	public static final String JIFEN="JIFEN";
	public static final String SUPERADINID="SUPERADINID";//最高管理员ID
	public final static String ADMIN_STATIC="ADMIN_STATIC";//StaticData
	public final static String STATIC_LIST="STATIC_LIST";//分类列表
	public final static String STATIC_ALL="STATIC_ALL";//所有数据
	public final static String ADMIN_SETTING = "ADMIN_SETTING";//系统设置
	public final static String SETTING_LIST = "SETTING_LIST";//系统参数
	public final static String ADMIN_NEWS="ADMIN_NEWS";//新闻资讯管理
	public final static String NEWS_TOP="NEWS_TOP";//顶置
	public final static String ADMIN_USER="ADMIN_USER"; //公司管理员
	public final static String USER_ADMIN="USER_ADMIN";//管理员
	public final static String USER_COMMON="USER_COMMON";//普通管理员
	//session
	public static final String SESS_RANDOM_IMG = "randomImageStr";
	public static final String SESS_USER = "session_user";
	public static final String SESS_GOODS = "session_goods";//cookie 中的商品
	public static final String SESS_GOODS_NUM = "session_goods_num";//cookie 中的商品
	public static final String SESS_ORDERS = "session_orders";// 存储在session中的订单
	public static final String SESS_RETURNURL="returnUrl";//登录后跳转页面
	
	/********************staticdata key******************/
	public static final String NEWS_INFOR = "INFOR";//新闻类型：新闻资讯
	public static final String NEWS_PAGE = "PAGE";//新闻类型：网站页面
	public static final String NEWS_TYPE = "NEWSTYPE";
	
	public static final String STATIC_SUBNAV ="SUBNAV";
	public static final String STATIC_NAV ="NAV";
	public static final String STATIC_ATTR="ATTR";
	
	
	//staticdata type
	public static final String PP ="PP";//品牌
	public static final String NO ="NO";
	public static final String MENU ="MENU";//主菜单
	public static final String FIRS_TNAV ="NAV";//一级菜单
	public static final String SECOND_NAV ="SUBNAV";//二级菜单
	public static final String SLIDE ="SLIDE";//图片滚动
	
	//null
	public static final String NULL="_NULL";
	public static final String BLANK="_BLANK";
	
	//application
	public static final String APP_1F="APP_1F";
	
	//新版后台控件
		public static final String ADM_ADD_NEW = "&nbsp;<button type=\"button\" class=\"btn btn-success btn-xs\" onclick=\"open('admFind%sById','','添加%s')\">"
				+ "<i class=\"iconfont f11\">&#xe625;&nbsp;</i>添加</button>";
		public static final String ADM_OPEN_PAGE = "&nbsp;<button type=\"button\" class=\"btn %s btn-xs\" onclick=\"open('adminJsp?jspName=%s','','%s')\">"
				+ "<i class=\"iconfont f11\">%s&nbsp;</i>%s</button>";
		public static final String ADM_INPUT = "&nbsp;<input type=\"text\" class=\"form-control input-sm searchInput %s\" id=\"%s\" name=\"%s\" ltype=\"date\"/ placeholder=\"%s\">";
		public static final String ADM_SEARCH = "&nbsp;<button type=\"button\" class=\"btn btn-primary btn-xs\" onclick=\"search(%s)\">"
				+ "<i class=\"iconfont f11\">"+Const.ImgSearch+"&nbsp;</i>搜索</button>";
    
}
