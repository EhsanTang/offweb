<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<div class="web-map pl10 C999 f12">
	<button type="button" class="btn btn-blue btn-xs" onclick="goBack()">
		<i class="iconfont f11">&#xe634;&nbsp;</i>返回
	</button>
	<button type="button" class="btn btn-default btn-xs" ng-if="!error&&list.ParentPage.name">
		<div class="mt-1 fl mr5"  ng-bind-html="list.ParentPage.description|trustHtml"></div>
		{{list.ParentPage.name}}
	</button>
	<button type="button" class="btn btn-default btn-xs" ng-if="!error&&list.CurrentPage.name">
		{{list.CurrentPage.name}}
	</button>
	<button type="button" class="btn btn-danger btn-xs" ng-if="error">
		<span class="glyphicon glyphicon-remove"></span>
		{{error}}
	</button>
	<button type="button" class="btn btn-info btn-xs" ng-click="pageTurn(1, 'sortname',list.sortname)" ng-if="list.sortname">
		<i class="iconfont f12"><span ng-bind-html="list.sortorder|trustHtml"></span>&nbsp;</i>{{list.sortname}}
	</button>
	<button type="button" class="btn btn-warning btn-xs" ng-click="pageTurn(list.Page.currentPage)">
		<i class="iconfont f11">&#xe645;&nbsp;</i>刷新
	</button>
	<span ng-bind-html="list.operators|trustHtml"></span>
</div>
