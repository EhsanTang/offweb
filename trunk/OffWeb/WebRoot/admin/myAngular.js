var app = angular.module('app', []);
     //以html形式输出
     app.filter("trustHtml",function($sce){
    	 return function (input){ return $sce.trustAsHtml(input); } 
    });
     app.controller('admController', function($scope) {
    	 var params = $("#params").val();
    	 var url = $("#url").val();
    	 var result = callAjaxByName("iUrl="+url+"|iPost=true|isHowMethod=return|iAsync=false|iParams="+params);
    	 if(result.indexOf('[ERROR]') >= 0){
    		 $scope.error = result.replace('[ERROR]', '');
    	 }else{
    		 $scope.list = eval("("+result+")");
    	 }
    	 // $("#lookUp").hide();
    	 /**
    	  * 分页
    	  */
    	 $scope.pageTurn = function (page, key, value) {
    		 pageTurn(page, key, value);
    	 }
    	 $scope.open = function(iUrl,item,title,iParam){
    		 open(iUrl,item,title,iParam);
    	 }
    	 $scope.del = function(iUrl,item,title,iParam){
    		 del(iUrl,item,title,iParam);
    	 }
     });
     app.controller('webController', function($scope) {
    	 var params = $("#params").val();
    	 var url = $("#url").val();
    	 var result = callAjaxByName("iUrl="+url+"|iPost=true|isHowMethod=return|iAsync=false|iParams="+params);
    	 if(result.indexOf('[ERROR]') >= 0){
    		 $scope.error = result.replace('[ERROR]', '');
    	 }else{
    		 $scope.list = eval("("+result+")");
    	 }
     });
     app.controller('inforController', function($scope) {
    	 var params = "&p=list&p_type=INFOR&pageBean.size=3";
    	 var result = callAjaxByName("iUrl=newsList|iPost=true|isHowMethod=return|iAsync=false|iParams="+params);
    	 if(result.indexOf('[ERROR]') >= 0){
    		 $scope.error = result.replace('[ERROR]', '');
    	 }else{
    		 $scope.list = eval("("+result+")");
    	 }
     });
     app.controller('productController', function($scope) {
    	 var params = "&p=list&p_type=PRODUCT&pageBean.size=3";
    	 var result = callAjaxByName("iUrl=newsList|iPost=true|isHowMethod=return|iAsync=false|iParams="+params);
    	 if(result.indexOf('[ERROR]') >= 0){
    		 $scope.error = result.replace('[ERROR]', '');
    	 }else{
    		 $scope.list = eval("("+result+")");
    	 }
     });
//     lookUp('lookUp','',100,300,3);
//	 showMessage('lookUp','false',false,-1);
//	 callAjaxByName("iUrl="+iUrl+"|isHowMethod=updateDiv|iTarget=modal-body|iAsync=false|iParams=&id="+item.id);
//	 showMessage('lookUp','false',false,0);
//	 title = title? title:"编辑";
//	 $(".modal-title").html(title);
//	 $("#myModal").modal("show");