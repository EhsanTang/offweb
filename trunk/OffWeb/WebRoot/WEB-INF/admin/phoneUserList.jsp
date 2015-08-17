<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="css.jsp"%>
<div ng-app="app" class="p10" ng-controller="admController">
	<%@include file="websiteMap.jsp"%>
	<input id="url" type="hidden" value="admLoadPhoneUserList">
	<table class="table table-striped w BGEEE r5 mt10">
		<thead>
			<tr>
				<th class="cursor w50 tc" onclick="pageTurn(1, 'sortname', 'id')">ID</th>
				<th class="tc">电话</th>
				<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'cid')">卡号</th>
				<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'deadline')">有效时间</th>
				<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'balance')">余额</th>
				<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'consume')">消费</th>
				<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'dream')">梦想基金</th>
				<th>版本</th>
				<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'addTime')">添加时间</th>
				<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'lasttime')">剩余时间m</th>
				<th class="cursor tc" onclick="pageTurn(1, 'sortname', 'lasttime')">最后登录</th>
				<th>体验卡申请时间</th>
				<th class="w130 tc">操作</th>
			</tr>
		</thead>
		<tr ng-repeat="item in list.Rows track by $index">
			<td class="tc">{{item.id}}</td>
			<td class="tc">{{item.phone}}</td>
			<td class="tc">{{item.cid}}</td>
			<td class="tc">{{item.endTime}}</td>
			<td class="tc">{{item.balance}}</td>
			<td class="tc">{{item.consume}}</td>
			<td class="tc">{{item.dream}}</td>
			<td class="tc">{{item.version}}</td>
			<td class="tc">{{item.showAddTime}}</td>
			<td class="tc">{{item.phonetime}}</td>
			<td class="tc">{{item.lasttime}}</td>
			<td class="tc">{{item.lastApply}}</td>
			<td class="tc">
				<a class="f12 text-primary" data-toggle="tooltip" data-placement="top" title="编辑‘{{item.phone}}'" 
					ng-click="open('admFind'+list.clazz+'ById',item,'','&flag='+item.flag)">
						<i class="iconfont">&#xe618;</i>&nbsp;
				</a>
				
				<a class="f12 text-warning" data-toggle="tooltip" data-placement="top" title="查看‘{{item.phone}}’电话账单"
				ng-href="adminJsp?jspName=billList&uid={{item.id}}">
						<i class="iconfont">&#xe635;</i>&nbsp;
				</a>
				<a class="f12 text-success" data-toggle="tooltip" data-placement="top" title="查看‘{{item.phone}}’账单"
				ng-href="adminJsp?jspName=consumeList&uid={{item.id}}">
						<i class="iconfont">&#xe636;</i>&nbsp;
				</a>
				<a class="f12 text-info" data-toggle="tooltip" data-placement="top" title="查看‘{{item.phone}}’电话卡"
				ng-href="adminJsp?jspName=cardList&p_id={{item.id}}">
						<i class="iconfont">&#xe637;</i>&nbsp;
				</a>
				<a class="f12 text-success" data-toggle="tooltip" data-placement="top" title="查看‘{{item.phone}}’代理卡"
				ng-href="adminJsp?jspName=cardList&p_id={{item.id}}&card=agent">
						<i class="iconfont">&#xe638;</i>&nbsp;
				</a>
				<a class="f12 text-danger" data-toggle="tooltip" data-placement="top" title="屏蔽'{{item.phone}}'" ng-if="item.flag!='-100'"
								ng-click="del('admDelete'+list.clazz,item,'确认屏蔽用户'+item.phone+'?')">
								<i class="iconfont">&#xe649;</i>&nbsp;
				</a>
				<a class="f12 text-success" data-toggle="tooltip" data-placement="top" title="解除屏蔽'{{item.phone}}'" ng-if="item.flag=='-100'"
								ng-click="del('admAdd'+list.clazz,item,'确认解除对用户'+item.phone+'的屏蔽?','&flag=1')">
								<i class="iconfont">&#xe649;</i>&nbsp;
				</a>
			</td>
		</tr>

	</table>
	<!-- 分页url -->
	<input id="href" type="hidden" value="adminJsp" />
	<%@include file="page.html"%>
</div>
<%@include file="js.jsp"%>
<%@include file="datePicker.jsp"%>
