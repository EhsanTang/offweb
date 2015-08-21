<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@include file="subPages/css.jsp"%>
<body class="small-width">
	<%@include file="subPages/top.jsp"%>
	<%@include file="subPages/nav.jsp"%>
	 <input id="url" type="hidden" value="newsInfor">
	<div class="container mb30" ng-app="app" class="p10" ng-controller="webController">
			<div class="news-detail row shadow bg-white mt10 p50 lh26 min-h400">
				<div class="tc" ng-if="list.Model.type=='INFOR'">
					<h4 class="pb10 roman">{{list.Model.title}}</h4>
					<hr>
					<span class="C999 fm f12 lh30">
						<s:property value="@Static@getStatic('L_CLICK').lang"/>:{{list.Model.click}}
						&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="@Static@getStatic('L_TIME').lang"/>:{{list.Model.date}}
					</span>
				</div>
				<div class="news-detail-title mb20 roman border-left-color" ng-if="list.Model.type!='INFOR'">{{list.Model.title}}</div>
				<span ng-bind-html="list.Model.content|trustHtml"></span>
			</div>
	</div>
	<!--包含底部的页面  -->
	<%@include file="subPages/footer.jsp"%>
</body>


