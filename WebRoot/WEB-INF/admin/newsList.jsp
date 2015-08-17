<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="css.jsp"%>
<div ng-app="app" class="p10" ng-controller="admController">
	<%@include file="websiteMap.jsp"%>
	<input id="url" type="hidden" value="admLoadNewsList">
	<table class="table table-striped w BGEEE r5 mt10">
		<thead>
			<tr>
				<th class="cursor w50 tc" onclick="pageTurn(1, 'sortname', 'id')">ID</th>
				<th class="tc">标题</th>
				<th class="tc">类别</th>
				<th class="tc">标识</th>
				<th class="tc">标签</th>
				<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'click')">点击量</th>
				<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'addTime')">添加时间</th>
				<th class="w60 tc">操作</th>
			</tr>
		</thead>
		<tr ng-repeat="item in list.Rows track by $index">
			<td class="tc">{{item.id}}</td>
			<td class="tc">{{item.cntitle}}</td>
			<td class="tc">{{item.type}}</td>
			<td class="tc">{{item.flag}}</td>
			<td class="tc">{{item.tag}}</td>
			<td class="tc">{{item.click}}</td>
			<td class="tc">{{item.showAddTime}}</td>
			<td class="tc">
				<a class="f12 text-primary" data-toggle="tooltip" data-placement="top" title="编辑'{{item.cntitle}}'"
								ng-click="open('admFind'+list.clazz+'ById',item)">
								<i class="iconfont">&#xe618;</i>&nbsp;
				</a>
				<a class="f12 text-danger" data-toggle="tooltip" data-placement="top" title="删除'{{item.cntitle}}'"
								ng-click="del('admDelete'+list.clazz,item)">
								<i class="iconfont">&#xe646;</i>&nbsp;
				</a>
				</td>
		</tr>

	</table>
	<!-- 分页url -->
	<input id="href" type="hidden" value="adminJsp" />
	<%@include file="page.html"%>
</div>
<%@include file="js.jsp"%>