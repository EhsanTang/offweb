    	var editor;
    	var editor2;
    	$(function (){
    		if($("#elm1").length>0){
	    		editor =  KindEditor.create('textarea[id="elm1"]', {
					allowFileManager : false,
					uploadJson : 'fileUpload',
					afterBlur: function () { this.sync(); }
				});	
    		}
    		if($("#elm2").length>0){
	    		editor2 =  KindEditor.create('textarea[id="elm2"]', {
					allowFileManager : false,
					uploadJson : 'fileUpload',
					afterBlur: function () { this.sync(); }
				});	
    		}
    	});
		//事件，宽度，高度，是否为单选，html元素id，查询的code，查询的type，默认值，其他参数，回调函数，回调参数
		function loadPick(event,mywidth,myheight,radio,tag,code,type,def,params,iCallBack,iCallBackParam) { 
			callAjaxByName("iUrl=pickOut|isHowMethod=updateDiv|iParams=&type="
					+type+"&radio="+radio+"&code="+code+"&tag="+tag+"&def="+def+params,iCallBack,iCallBackParam);
			lookUp('lookUp', event, myheight, mywidth ,4);
			showMessage('lookUp','false',false,-1);
		}
		function loadSubType(def,id,type,isRadio,fid){
			var pcode=$("#"+fid).val();
			loadPick(event,360,240,isRadio,id,'STATICDATA','',def,'&p_code='+pcode+'&p_type='+type);
		}