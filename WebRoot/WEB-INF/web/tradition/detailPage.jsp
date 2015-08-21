<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@include file="subPages/css.jsp"%>
<body class="small-width">
	<%@include file="subPages/top.jsp"%>
	<%@include file="subPages/nav.jsp"%>
	 <input id="url" type="hidden" value="newsDetail">
	<div class="container mb30 p10" ng-app="app" ng-controller="webController">
			<div class="news-detail row shadow bg-white p50 lh26 min-h400">
				<div class="news-detail-title mb20 roman border-left-color" ng-if="list.Model.type!='INFOR'">{{list.Model.title}}</div>
				<span ng-bind-html="list.Model.content|trustHtml"></span>
			</div>
	</div>
	<!--包含底部的页面  -->
	<%@include file="subPages/footer.jsp"%>
</body>


