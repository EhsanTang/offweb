// 修复ie8对trim不支持
String.prototype.trim = function () {
    return this.replace(/^\s\s*/, '').replace(/\s\s*$/, '');
}
$("#go_top").click(function (){
	$("html, body").animate({ scrollTop: 0 }, 400);
});
function setCookie(){
	if(getUrlParam('authorization')!=''){
		document.cookie="historyUrl="+escape(window.location.href); 
	}
}
function getCookie(name){ 
	var strCookie=document.cookie; 
	var arrCookie=strCookie.split(";"); 
	for(var i=0;i<arrCookie.length;i++){ 
		var arr=arrCookie[i].split("=");
		if(arr[0].trim()==name.trim()){
			return arr[1];
		}
	}
	return ""; 
} 
//获取url中的参数
function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
    if (r != null) return unescape(r[2]); return ""; //返回参数值
}
/** ************刷新验证吗*********** */
/**
 * 图片id 验证码输入框id
 */
function changeimg(imgId,inputId){
	document.getElementById(imgId).src='authImg.img?'+Math.random(); 
	try{
		document.getElementById(inputId).focus();
	}catch(ex){}
	return false;
}

/**
 * 单选
 */
/** ********************************** */
function selectRadio(className,id,radioId){
	var objs = $("."+className);
	objs.removeClass("active");
	var obj = $("#"+id);
	var cobj = $("#"+radioId);
	if(!obj.hasClass("active")){
		obj.addClass("active"); 
		$(cobj).prop("checked",true);
	}
	
}