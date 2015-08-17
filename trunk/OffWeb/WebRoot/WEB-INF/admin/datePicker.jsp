<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<link href="bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />
<script src="bootstrap/js/bootstrap-datetimepicker.min.js"></script>
<script src="bootstrap/js/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
	/**循环初始化日期控件，防止异步获取的日期控件没有被初始化**/
	var hasDone = false;
	function initDatePicker(){
		if($('#datetimepicker')){
			$('#datetimepicker').datetimepicker({
				language:  'zh-CN',
		        weekStart: 1,
				autoclose: 1,
				startView: 2,
				minView: 2,
				forceParse: 0,
			    format: 'yyyy-mm-dd'
			});
			hasDone = true;
		}
		if($('#datetimepicker2')){
			$('#datetimepicker2').datetimepicker({
				language:  'zh-CN',
		        weekStart: 1,
				autoclose: 1,
				startView: 2,
				minView: 2,
				forceParse: 0,
			    format: 'yyyy-mm-dd'
			});
		}
		/* $('.form_date').datetimepicker({
	        language:  'zh',
	        weekStart: 1,
	        todayBtn:  1,
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView: 2,
			forceParse: 0
	    }); */
	}
	var interval=function(){
		if(hasDone){
			clearInterval(clearIntervalFun);
		}else{
			initDatePicker();
		}			
	}
	clearIntervalFun=setInterval(interval,1000);
</script>