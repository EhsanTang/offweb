<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="../subPages/css.jsp"%>

<body style="padding:30px;">

	<form name="form1" method="post" action="manageAddConsume" id="form1">
		<table cellpadding="0" cellspacing="0" class="table table-hover table-striped">
			<tr>
				<td>卡id:</td>
				<td>${model.id}</td>
			</tr>
			<tr>
				<td>代理商电话:</td>
				<td>${model.agent.phone}</td>
			</tr>
			<tr>
				<td>用户电话:</td>
				<td>${model.phoneUser.phone}</td>
			</tr>
			<tr>
				<td>类型:</td>
				<td>${model.type}：<s:property value="model.type.name"/></td>
			</tr>
			<tr>
				<td>显示类型:</td>
				<td>${model.showType}：<s:property value="model.showType.name"/></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td>${model.password}</td>
			</tr>
			<tr>
				<td>批次:</td>
				<td>${model.batch}：<s:property value="@Static@getStatic(model.batch).name"/></td>
			</tr>
			<tr>
				<td>省份:</td>
				<td>${model.province}：<s:property value="@Static@getStatic(model.province).name"/></td>
			</tr>
			<tr>
				<td>城市:</td>
				<td>${model.city}：<s:property value="@Static@getStatic(model.city).name"/></td>
			</tr>
			<tr>
				<td>使用时间:</td>
				<td>${model.consumeTime}</td>
			</tr>
			<tr>
				<td>费用（电话-基金-余额）:</td>
				<td>${model.phoneFee}-${model.dreamFee}-${model.shopFee}</td>
			</tr>
			<tr>
				<td>标识:</td>
				<td>${model.flag}</td>
			</tr>
			<tr>
				<td>添加时间:</td>
				<td>${model.addTime}</td>
			</tr>
			<tr>
				<td>有效时间(0表示不限使用时间):</td>
				<td>${model.endTime}</td>
			</tr>
		</table>
	</form>
	
</body>
</html>