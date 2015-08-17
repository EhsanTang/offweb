<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="css.jsp"%>
<div ng-app="app" class="p10" ng-controller="admController">
	<%@include file="websiteMap.jsp"%>
	<!-- angular数据加载地址 -->
	<input id="url" type="hidden" value="admLoadBillList">
	<table class="table table-striped w BGEEE r5 mt10">
		<thead>
			<tr>
				<th class="cursor w50 tc" onclick="pageTurn(1, 'sortname', 'id')">ID</th>
				<th class="tc">主叫号码</th>
				<th class="tc">被叫号码</th>
				<th class="cursor w50 tc" onclick="pageTurn(1, 'sortname', 'differ')">时长</th>
				<th class="tc">标示</th>
				<th class="tc">是否异常</th>
				<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'addTime')">添加时间</th>
				<th class="w80 tc">挂机类型</th>
				<th class="tc">状态</th>
				<th class="w60 tc">操作</th>
			</tr>
		</thead>
		<tr ng-repeat="item in list.Rows track by $index">
			<td class="tc">{{item.id}}</td>
			<td class="tc">{{item.caller}}</td>
			<td class="tc">{{item.called}}</td>
			<td class="tc">{{item.differ}}</td>
			<td class="tc">{{item.flagName}}</td>
			<td class="tc"><span  ng-bind-html="item.isException|trustHtml"></span></td>
			<td class="tc">{{item.showAddTime}}</td>
			<td class="tc">{{item.byetype}}</td>
			<td class="tc">{{item.action}}</td>
			<td class="tc">
			<a class="f12 text-primary" data-toggle="tooltip" data-placement="top" title="编辑'{{item.id}}'" ng-if="item.flag!='-100'"
								ng-click="open('admFind'+list.clazz+'ById',item)">
								<i class="iconfont">&#xe618;</i>&nbsp;
			</a>
			<a class="f12 text-success" data-toggle="tooltip" data-placement="top" title="查看'{{item.id}}'详情"
								ng-click="open('adm'+list.clazz+'Detail',item,'','&flag='+item.flag)">
								<i class="iconfont">&#xe64c;</i>&nbsp;
			</a>
			<a class="f12 text-danger" data-toggle="tooltip" data-placement="top" title="删除'{{item.id}}'" ng-if="item.flag!='-100'"
								ng-click="del('admDelete'+list.clazz,item)">
								<i class="iconfont">&#xe646;</i>&nbsp;
			</a>
			</td>
				
		</tr>

	</table>
	<input id="href" type="hidden" value="adminJsp">
	<%@include file="page.html"%>
</div>
<%@include file="js.jsp"%>