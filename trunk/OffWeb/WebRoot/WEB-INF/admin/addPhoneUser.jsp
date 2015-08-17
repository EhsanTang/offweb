<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<script src="admin/addPageInit.js?${JSCSS}" type="text/javascript"></script>
<form name="editForm" id="editForm">
	<table class="table table-bordered">
		<tr>
			<td>手机:</td>
			<td>${model.phone}</td>
		</tr>
		<tr>
			<td>密码:</td>
			<td><input class="form-control" name="password" type="text" value=""/></td>
		</tr>
		<tr>
			<td>截止时间:</td>
			<td><input class="form-control" name="endTime" value="${model.endTime}" type="text" id="datetimepicker2"/></td>
		</tr>
		<tr>
			<td>余额:</td>
			<td><input class="form-control" name="balance" type="text" value="${model.balance}" />
			</td>
		</tr>
		<tr>
			<td>消费总额:</td>
			<td><input class="form-control" name="consume" type="text" value="${model.consume}" />
			</td>
		</tr>
		<tr>
			<td>梦想基金:</td>
			<td><input class="form-control" name="dream" type="text" value="${model.dream}" /></td>
		</tr>
		<tr>
			<td>剩余通话时间:</td>
			<td><input class="form-control" name="phonetime" type="text"
				value="${model.phonetime}" /></td>
		</tr>
		<tr>
			<td>标识:</td>
			<td><s:select name="flag" cssClass="form-control"
					list="@cn.yitongworld.enu.FlagType@values()" listKey="name"
					listValue="name()" value="model.flag" />
		</tr>

	</table>
	<div style="width:100%"></div>
	<br /> <input name="id" type="hidden" value="${model.id}" />
	<div class="form-group">
		<input type="button" value="提交" class="form-control btn btn-success"
			onclick="submitEdit('admAddPhoneUser')" />
	</div>
</form>
<%@include file="datePicker.jsp"%>
