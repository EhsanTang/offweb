<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<form name="editForm" id="editForm">
	<table class="table table-bordered">
		<tr>
			<td>账单id:</td>
			<td>${model.id}</td>
		</tr>
		<tr>
			<td>用户:</td>
			<td>${model.phoneUser.phone}</td>
		</tr>
		<tr>
			<td>操作人员:</td>
			<td>${model.operUser.name}</td>
		</tr>
		<tr>
			<td>类型:</td>
			<td>${model.type}
		</tr>
		<tr>
			<td>标题:</td>
			<td>${model.name}</td>
		</tr>
		<tr>
			<td>金额:</td>
			<td>${model.money}</td>
		</tr>

		<tr>
			<td>订单号:</td>
			<td>${model.num}</td>
		</tr>

		<tr>
			<td>外部订单号:</td>
			<td>${model.outNum}</td>
		</tr>

		<tr>
			<td>支付账号:</td>
			<td>${model.account}</td>
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
			<td>账号类型:</td>
			<td>${model.accType}</td>
		</tr>

		<tr>
			<td>备注:</td>
			<td>${model.remark}
		</tr>
	</table>

</form>

