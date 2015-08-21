<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@include file="subPages/css.jsp"%>
<body class="small-width">
	<%@include file="subPages/top.jsp"%>
	<%@include file="subPages/nav.jsp"%>
	<input id="url" type="hidden" value="newsList">
	<div class="container mb30" ng-app="app" class="p10"
		ng-controller="webController">
		<div class="row shadow bg-white mt10 p15 pt0 min-h400">
			<div class="news-list col-sm-12 m0"
				ng-repeat="item in list.Rows track by $index">
				<div class="col-xs-12 col-sm-8">
					<a ng-href="go?p={{item.style}}&id={{item.id}}">{{item.title}}</a>
				</div>
				<div class="col-xs-12 col-sm-4 tr news-date f12 fm">
					<s:property value="@Static@getStatic('L_CLICK').lang" />
					:{{item.click}}&nbsp;&nbsp;&nbsp;&nbsp;
					<s:property value="@Static@getStatic('L_TIME').lang" />
					:{{item.date}}
				</div>
				<div class="cb"></div>
			</div>

			<!-- 分页url -->
			<input id="href" type="hidden" value="go" />
			<div class="mb20 cb"></div>
			<%@include file="../../admin/page.html"%>
		</div>
	</div>
	<!--包含底部的页面  -->
	<%@include file="subPages/footer.jsp"%>
</body>


