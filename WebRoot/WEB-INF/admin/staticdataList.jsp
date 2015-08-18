<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="css.jsp"%>
<div ng-app="app" class="p10" ng-controller="admController">
	<%@include file="websiteMap.jsp"%>
	<input id="url" type="hidden" value="admLoadStaticdataList">
	<table class="table table-striped w BGEEE r5 mt10">
		<thead>
			<tr>
				<th class="cursor w50 tc" onclick="pageTurn(1, 'sortname', 'id')">ID</th>
				<th class="tc">类型</th>
				<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'pcode')">PCode</th>
				<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'code')">Code</th>
				<th class="tc">名称</th>
				<th class="tc">英文名称</th>
				<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'value')">值</th>
				<th class="tc">排序</th>
				<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'addTime')">添加时间</th>
				<th class="tc">描述</th>
				<th class="w80 tc">操作</th>
			</tr>
		</thead>
		<tr ng-repeat="item in list.Rows track by $index">
			<td class="tc">{{item.id}}</td>
			<td class="tc">{{item.type}}</td>
			<td class="tc">{{item.pcode}}</td>
			<td class="tc">{{item.code}}</td>
			<td class="tc">{{item.name}}</td>
			<td class="tc">{{item.enName}}</td>
			<td class="tc">{{item.value}}</td>
			<td class="tc">{{item.order}}</td>
			<td class="tc">{{item.showAddTime}}</td>
			<td class="tc"><span ng-bind-html="item.description|trustHtml"></span></td>
			<td class="tc">
				<a class="f12 text-primary" data-toggle="tooltip" data-placement="top" title="编辑'{{item.id}}'"
								ng-click="open('admFind'+list.clazz+'ById',item)">
								<i class="iconfont">&#xe618;</i>&nbsp;
				</a>
				<a class="f12 text-info" data-toggle="tooltip" data-placement="top"  title="查看'{{item.id}}'子元素" 
								ng-href="adminJsp?jspName=staticdataList&p_code={{item.code}}"  >
								<i class="iconfont">&#xe648;</i>&nbsp;
				</a>
				<a class="f12 text-danger" data-toggle="tooltip" data-placement="top" title="删除'{{item.id}}'"
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