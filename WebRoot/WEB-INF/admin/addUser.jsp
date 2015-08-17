<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<script src="admin/addPageInit.js?${JSCSS}" type="text/javascript"></script>
<form name="editForm" id="editForm">
	<table class="table table-bordered">
		<tr>
			<td>用户名:</td>
			<td><input name="name" type="text" value="${model.name}" class="form-control"/></td>

		</tr>
		<tr>
			<td>密码:</td>
			<td><input name="password" type="text" value="" class="form-control"/></td>

		</tr>
		<tr>
			<td>邮箱:</td>
			<td><input name="email" type="text" value="${model.email}" class="form-control"/></td>

		</tr>
		<tr>
			<td>手机:</td>
			<td><input name="phone" type="text" value="${model.phone}" class="form-control"/></td>

		</tr>
		<tr>
			<td>标识:</td>
			<td><s:select name="flag" cssClass="form-control"
					list="@cn.yitongworld.enu.FlagType@values()" listKey="name"
					listValue="name()" value="model.flag" />
		</tr>
		<tr>
			<td>类型:</td>
			<td><s:select name="type" cssClass="form-control"
					list="@cn.yitongworld.enu.UserType@values()" listKey="name()"
					listValue="name" value="model.type.name()" />
		</tr>

		<tr>
			<td>选择权限:</td>
			<td><input name="authority" id="authority" class="form-control"
				value="${model.authority}" type="text"
				onclick="loadPick(event,360,240,'false','authority','STATICDATA','','${model.authority}','&p_code=AUTHORITY&p_type=NO');" />
			</td>
		</tr>

		<tr>
			<td>选择角色:</td>
			<td><input name="role" id="role" value="${model.role}" class="form-control"
				type="text"
				onclick="loadPick(event,360,240,'false','role','STATICDATA','','${model.role}','&p_code=ROLE&p_type=NO');" />
			</td>
		</tr>

	</table>
	<br /> <input name="id" type="hidden" value="${model.id}" />
	<div class="form-group">
		<input type="button" value="提交" class="form-control btn btn-success"
			onclick="submitEdit('admAddUser')" />
	</div>

</form>
