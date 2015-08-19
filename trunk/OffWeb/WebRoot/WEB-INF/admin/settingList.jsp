<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="css.jsp"%>
<div ng-app="app" class="p10" ng-controller="admController">
<%@include file="websiteMap.jsp"%>
	<!-- angular 数据加载地址 -->
	<input id="url" type="hidden" value="admLoadSettingList">
	<table class="table table-striped w BGEEE r5 mt10">
				<thead>
					<tr>
						<th class="cursor w50 tc" onclick="pageTurn(1, 'sortname', 'id')">ID</th>
						<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'key')">主键</th>
						<th class="tc">值</th>
						<th class="tc">备注</th>
						<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'addTime')">添加时间</th>
						<th class="w60 tc">操作</th>
					</tr>
				</thead>
				<tr ng-repeat="item in list.Rows">
						<td class="tc">{{item.id}}</td>
						<td class="tc">{{item.key}}</td>
						<td class="tc">{{item.value}}</td>
						<td class="tc"><span ng-bind-html="item.remark|trustHtml"></span></td>
						<td class="tc">{{item.showAddTime}}</td>
						<td class="tc">
							<a class="f12 text-primary" data-toggle="tooltip" data-placement="top" title="编辑'{{item.id}}'"
								ng-click="open('admFind'+list.clazz+'ById',item)">
								<i class="iconfont">&#xe618;</i>&nbsp;
							</a>
							<a class="f12 text-danger" data-toggle="tooltip" data-placement="top" title="删除'{{item.id}}'"
								ng-click="del('admDelete'+list.clazz,item)">
								<i class="iconfont">&#xe646;</i>&nbsp;
							</a>
						</td>
				</tr>
</table>
	<!-- 分页url -->
	<input id="href" type="hidden" value="adminJsp"/>
	<%@include file="page.html"%>
</div>
<%@include file="js.jsp"%>


