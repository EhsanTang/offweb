<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<script src="admin/addPageInit.js?${JSCSS}" type="text/javascript"></script>
<form name="editForm" id="editForm">
	<table class="table table-bordered">
		<tr>
			<td>用户*:</td>
			<td><input class="form-control" name="phoneUser.id" type="text" /></td>
		</tr>
		<tr>
			<td>标题:</td>
			<td><input class="form-control" name="name" id="name"
				type="text" /></td>
		</tr>
		<tr>
			<td>金额*:</td>
			<td><input class="form-control" id="money" name="money"
				type="text" /></td>
		</tr>

		<tr>
			<td>支付订单号:</td>
			<td><input class="form-control" name="outNum" id="outNum"
				type="text" /></td>
		</tr>

		<tr>
			<td>支付账号:</td>
			<td><input class="form-control" name="account" id="account"
				type="text" /></td>
		</tr>
		<tr>
			<td>备注*:</td>
			<td><textarea name="remark" class="form-control" id="remark"
					rows="3"></textarea></td>
		</tr>
		<tr>
			<td>支付类型*:</td>
			<td><s:select name="type" cssClass="form-control"
					list="@cn.yitongworld.enu.PayType@values()" listKey="name()"
					listValue="name" />
		</tr>
		<tr>
			<td>账号类型*:</td>
			<td><s:select name="accType" cssClass="form-control"
					list="@cn.yitongworld.enu.AccType@values()" listKey="name()"
					listValue="name" />
		</tr>
	</table>
	<div class="form-group">
		<input type="button" value="提交" class="form-control btn btn-success"
			onclick="submitEdit('admAddCard')" />
	</div>
</form>
