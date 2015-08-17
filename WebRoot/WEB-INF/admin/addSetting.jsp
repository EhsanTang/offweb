<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<link rel="stylesheet" href="admin/kediter/themes/default/default.css" />
<script charset="utf-8" src="admin/kediter/kindeditor-min.js"></script>
<script charset="utf-8" src="admin/kediter/lang/zh_CN.js"></script>
<script src="admin/addPageInit.js?${JSCSS}" type="text/javascript"></script>
<form name="editForm" id="editForm">
	<table class="table table-bordered">
		<tr>
			<td>id:</td>
			<td>${model.id}</td>
		</tr>
		<tr>
			<td>主键:</td>
			<td><input name="key" class="form-control" type="text"
				value="${model.key}" <s:if test="model.id!=null">readonly</s:if> /></td>
		</tr>
		<tr>
			<td>值:</td>
			<td><input name="value" class="form-control" id="value"
				value="${model.value}" type="text" id="txtName" /></td>
		</tr>
		<tr>
			<td>备注:</td>
			<td><textarea name="remark" class="form-control" id="remark"
					rows="3">${model.remark}</textarea></td>
		</tr>
		<tr>
			<td>验证脚本:</td>
			<td><textarea name="verify" class="form-control" id="verify"
					rows="3">${model.verify}</textarea></td>
		</tr>

	</table>
	<input name="id" type="hidden" value="${model.id}" /> 
	<input name="flag" type="hidden" value="${model.flag}" />
	<div class="form-group">
		<input type="button" value="提交" class="form-control btn btn-success"
			onclick="modifySetting('admAddSetting')" />
	</div>
</form>
<textarea id="elm1" rows="15" cols="20"
	style="width: 100%; height:200px;"></textarea>
<script type="text/javascript">
function modifySetting(url){
	${model.verify};
	submitEdit(url);
}
</script>
