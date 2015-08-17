	<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
	<input type="hidden" value="[ERRORPAGE]">
	<div class="container">
		<div class="row mt30 mb100 min-h400 shadow bg-white p30">
			<div class="col-xs-12 pb20 f14">
				<h3 class="B2 fb mb10"> <s:property value="#request.pageName!=null?#request.pageName:'操作失败'" /></h3>
				<p>${pageMessage}</p>
			</div>
			<div class="cb"></div>
			<hr/>
			<div class="col-xs-12 mt20 lh26">
				<h4 class="pt30"><span class="B2">错误详情:</span>${tipMessage}</h4>
			</div>
		</div>
	</div>
