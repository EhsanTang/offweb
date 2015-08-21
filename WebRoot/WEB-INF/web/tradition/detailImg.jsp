<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@include file="subPages/css.jsp"%>
<body class="small-width"  ng-app="app" ng-controller="webController">
	<%@include file="subPages/top.jsp"%>
	<%@include file="subPages/nav.jsp"%>
	 <input id="url" type="hidden" value="newsInfor">
	 <img ng-src="{{list.Model.url}}" class="w mah400">
	 <div class="container mb30">
			<div class="news-detail row lh26 min-h400">
				<div class="roman tc f30 match-color m30">{{list.Model.title}}</div>
				<span ng-bind-html="list.Model.content|trustHtml"></span>
			</div>
	</div>
	<!--包含底部的页面  -->
	<%@include file="subPages/footer.jsp"%>
</body>


