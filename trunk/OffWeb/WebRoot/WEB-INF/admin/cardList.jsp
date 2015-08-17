<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="css.jsp"%>
<div ng-app="app" class="p10" ng-controller="admController">
	<%@include file="websiteMap.jsp"%>
	<!-- angular数据加载地址 -->
	<input id="url" type="hidden" value="admLoadCardList">
	<table class="table table-striped w BGEEE r5 mt10">
		<thead>
			<tr>
				<th class="cursor w50 tc" onclick="pageTurn(1, 'sortname', 'id')">ID</th>
				<th class="tc">电话卡类型</th>
				<th class="tc">电话卡生成批次</th>
				<th class="tc">电话卡所在省份</th>
				<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'phoneFee')">电话卡费用</th>
				<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'shopFee')">购物金额</th>
				<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'dreamFee')">梦想基金</th>
				<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'consumeTime')">使用时间</th>
				<th class="tc">标志符</th>
				<th class="w80 tc">操作</th>
			</tr>
		</thead>
		<tr ng-repeat="item in list.Rows track by $index">
			<td class="tc">{{item.id}}</td>
			<td class="tc">{{item.type}}</td>
			<td class="tc">{{item.batch}}</td>
			<td class="tc">{{item.province}}</td>
			<td class="tc">{{item.phoneFee}}</td>
			<td class="tc">{{item.shopFee}}</td>
			<td class="tc">{{item.dreamFee}}</td>
			<td class="tc">{{item.consumeTime}}</td>
			<td class="tc">{{item.flag}}</td>
			<td class="tc">
				<a class="f12 text-primary" data-toggle="tooltip" data-placement="top" title="编辑'{{item.id}}'"
								ng-click="open('admFind'+list.clazz+'ById',item)">
								<i class="iconfont">&#xe618;</i>&nbsp;
							</a>
							<a class="f12 text-success" data-toggle="tooltip" data-placement="top" title="查看'{{item.id}}'详情"
								ng-click="open('adm'+list.clazz+'Detail',item)">
								<i class="iconfont">&#xe64c;</i>&nbsp;
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