// 修复ie8对trim不支持
//String.prototype.trim = function () {
//    return this.replace(/^\s\s*/, '').replace(/\s\s*$/, '');
//}
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
/** **********分页加载更多******* */
var itarget;
function moreTurning(actionName,target){
	itarget = target;
	$("#currentPage").val(parseInt($("#currentPage").val())+1);
	var link = $("#loadingMore").html();
	$("#loadingMore").html(loadText);
	callAjax(actionName,'pageForm',true,'100','false',target,'',moreTurningCallBack,link);
}
function moreTurningCallBack(data,link){
	if (data.indexOf('[ERROR]') < 0){
		// 若返回分页标签，则需要删除，表示分页在返回的页面中，没有则表示分页在该div之外定义
		if(data.indexOf("pageForm")>0)
			$("#pageForm").remove();
		$("#"+itarget).append(data);
	}
	else
		$("#"+itarget).append(err1+"抱歉！系统繁忙，请稍后再试"+err2);
	if(data.trim().length>0)
		$("#loadingMore").html(link);
	else{
		if($("#loadingMore").length>0)
			$("#loadingMore").html("最后一页！");
		else
			$("#"+itarget).html("<div class='tc pt10'>没有数据！</div>");
	}
}
/** **********局部刷新分页******* */
function ajaxTurning(currentPage,actionName,target){
	$("#currentPage").val(currentPage);
	callAjax(actionName,'pageForm',true,'4','PROPUP',target);
}
/** **********翻页************** */
function pageTurning(currentPage){
	$("#currentPage").val(currentPage);
	$("#pageForm").submit();
}
/** *********翻页并添加查询条件***** */
function pageSubmit(id,value){
	// 点击排序,根据奇偶决定降序、升序
	if(id=="p_order"&&$("#p_desc").length>0){
		if($("#"+id).val()==value){
			$("#p_desc").val(parseInt($("#p_desc").val())+1);
		}else{
			$("#p_desc").val(0);
		}
	}
	$("#"+id).val(value);
	$("#currentPage").val("1");
	$("#totalPage").val("0");
	$("#pageForm").submit();
}
function submitForm(id){
	$("#"+id).submit();
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