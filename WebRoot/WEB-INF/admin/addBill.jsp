<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<script src="admin/addPageInit.js?${JSCSS}" type="text/javascript"></script>
<form name="editForm" id="editForm">
	<table class="table table-bordered">
		<tr>
			<td>ID:</td>
			<td>${model.id}</td>
		</tr>
		<tr>
			<td>故障备注（25个汉字）:</td>
			<td><textarea class="form-control" name="remark" id="remark">${model.remark}</textarea></td>
		</tr>
		<tr>
			<td>标识:</td>
			<td><s:select name="flag" cssClass="form-control"
					list="@cn.yitongworld.enu.FlagType@values()" listKey="name"
					listValue="name()" value="model.flag" />
		</tr>
	</table>
	<input name="id" type="hidden" value="${model.id}" />
	<div class="form-group">
		<input type="button" value="提交" class="form-control btn btn-success"
			onclick="submitEdit('admAddBill')" />
	</div>
</form>
