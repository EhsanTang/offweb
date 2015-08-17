/***********启用bootstrap提示*********************/
$(function () {
	  $('[data-toggle="tooltip"]').tooltip();
});
function submitEdit(url){
	$("#myModal").animate({ scrollTop: 0 }, 400);
	callAjaxByName('iUrl='+url+'|iPost=true|isHowMethod=custom|iTarget=modal-body|iFormId=editForm|iLoading=提交中，请稍后...',closeModeal);
}
/**根据url获取类容**/
function getUrlContent(url){
	callAjaxByName('iUrl=getUrlContent|tipTime=-1|isHowMethod=updateDivWithImg|iLoading=PROPUP请稍后...|iParams=&url='+url);
}
function open(iUrl,item,title,iParam){
	 var param = "iUrl="+iUrl+"|isHowMethod=updateDiv|iTarget=modal-body";
	 if(item)
		 param = param + "|iParams=&id="+item.id;
	 if(iParam)
		param = param + iParam;
	 callAjaxByName(param);
	 title = title? title:"编辑";
	 $(".modal-title").html(title);
	 $("#myModal").modal("show");
}
function del(iUrl,item,title,iParam){
	title = title? title:"确认要删除'"+item.id+"'？";
	if (confirm(title)) {
		var param = "iUrl="+iUrl+"|isHowMethod=updateDivWithImg|iLoading=PROPUP删除中，请稍后...|iParams=&id="+item.id;
		if(iParam)
			param = param + iParam;
		callAjaxByName(param);
    }
}
function search(){
	var url = $("#href").val();
	var params = $("#params").val();
	for(var i=0;i<arguments.length;i++){    
        params = addParams(params, $("#"+arguments[i]).attr("name") , $("#"+arguments[i]).val());
    }
	if(url.indexOf("?")<0)
		url = url+"?";
	openPage(url+params);
}
/***************后台js分页,添加条件至参数中********************/
function pageTurn(page, key, value)
{
	var params = $("#params").val();
	var url = $("#href").val();
	params = addParams(params, "pageBean.currentPage" , page);
	params = addParams(params, "pageBean.totalPage" , $("#PageTotalPage").val());
	params = addParams(params, "pageBean.allRow" , $("#PageAllRow").val());
	params= addParams(params, key , value);
	if(url.indexOf("?")<0)
		url = url+"?";
	openPage(url+params);
}
function addParams(params, key, value){
	var newParams="";
	if(key && params.indexOf(key)>=0){
		var splitstr= new Array();
		splitstr=params.split("&");
			
		for(var i=0;i<splitstr.length;i++)
		{
			var param = splitstr[i].split("=");
			if(param[0] == key){
				if(value)
					newParams = newParams+"&"+key+"="+value;
			}else if(param[0]){
				newParams = newParams+"&"+splitstr[i];
			}
		}
		//排序
		if(key == "sortname"){
			if(newParams.indexOf("sortorder=asc")>=0){
				newParams = newParams.replace("sortorder=asc","sortorder=desc");
			}else if(newParams.indexOf("sortorder=desc")>=0){
				newParams = newParams.replace("sortorder=desc","sortorder=asc");
			}else{
				newParams = newParams+"&sortorder=asc";
			}
		}
	}else if(key && value){
		newParams = params +"&"+key+"="+value;
	}else{
		newParams = params;
	}
	return newParams;
}
	function getPhoneArea(phone,target){
   	    callAjaxByName("iUrl=getPhoneArea|iPost=true|isHowMethod=3|iTarget="+target+"|iParams=&p_phone="+phone);
   	}
/******************callBack******************/
function closeModeal(data){
	if (data.indexOf('[OK]') >= 0)
		$("#modal-body").html(succ1+data.replace('[OK]', '')+succ2);
	else
		$("#modal-body").html(err1+data.replace('[ERROR]', '')+err2);
}

function showModeal(data){
	$("#modal-body").html(data);
	$("#myModal").modal("hide");
	$("#myModal").modal("show");
}
