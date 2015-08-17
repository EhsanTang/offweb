<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="css.jsp"%>
	<%@include file="left.jsp"%>
	<div id="right" class="fr">
		<%@include file="top.jsp"%>
		<iframe unselectable="on" id="context" name="main" src="http://yitongworld.com/index" frameborder="no" border="0">
		</iframe>
	</div>
<%@include file="js.jsp"%>
<script type="text/javascript">
init();
window.onresize = function(){
	init();
}
function init(){
	var height = $(window).height();
	var width = $(window).width();
	if(width<768){
		$("#right").css({"width":width-80});
		$(".left-menu").css({"width":80});
		$(".navbar-fixed-top").css({"left:":80});
		$(".nav-face").height(18);
		$(".menu-a").css({"padding-left":10});
		$(".sidebar").css({"padding-left":15});
	}else{
		$("#right").css({"width":width-200});
		$(".left-menu").css({"width":200});
		$(".navbar-fixed-top").css({"left:":199});
		$(".nav-face").height(40);
		$(".menu-a").css({"padding-left":30});
		$(".sidebar").css({"padding-left":20});
	}
	$("#context").height(height-40);
	$(".left-menu").height(height);
	$("#right").height(height);
}
</script>

 
