<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<link rel="stylesheet" href="admin/kediter/themes/default/default.css" />
<script charset="utf-8" src="admin/kediter/kindeditor-min.js"></script>
<script charset="utf-8" src="admin/kediter/lang/zh_CN.js"></script>
<script src="admin/addPageInit.js?${JSCSS}" type="text/javascript"></script>
<form name="editForm" id="editForm">
	<table class="table table-bordered">
		<tr>
			<td>标题:</td>
			<td><input name="cntitle" value="${model.cntitle}" type="text"
				class="form-control" validate="{required:true,minlength:2}" /></td>
		</tr>
		<tr>
			<td>英文标题:</td>
			<td><input name="entitle" value="${model.entitle}" type="text"
				class="form-control" /></td>
		</tr>

		<tr>
			<td>类型:</td>
			<td><input id="type" class="form-control" name="type"
				type="text" value="${model.type}"
				onclick="loadPick(event,360,240,'true','type','STATICDATA','','${model.type}','&p_code=NEWSTYPE&p_type=NO');" />
			</td>
		</tr>
		<tr>
			<td>评论:</td>
			<td>是否可以评论：<input class="form-control" type="radio"
				name="canComment" <s:if test="model.canComment">checked</s:if>
				value="true">是 <input class="form-control" type="radio"
				name="canComment" <s:if test="!model.canComment">checked</s:if>
				value="false">否
			</td>
		</tr>
		<tr>
			<td>标签（联系我们、帮助...）:</td>
			<td><input name="tag" type="text" class="form-control"
				value="${model.tag}" /></td>
		</tr>

		<tr>
			<td>点击量:</td>
			<td>${model.click}<input name="click" type="hidden"
				value="${model.click}" /></td>
		</tr>
		<tr>
			<td>标识:</td>
			<td><s:select name="flag"
					list="@cn.wegoteam.shop.enu.FlagType3@values()" listKey="name"
					cssClass="form-control" listValue="name()" value="model.flag" /></td>
		</tr>
		<tr>
			<td>图片:</td>
			<td><input name="imgUrl" type="text" class="form-control"
				value="<s:property value="model.imgUrl" escape="true"/>" /></td>
		</tr>
		<tr>
			<td>发布日期:</td>
			<td><input class="form-control" name="date"
				value="${model.date}" type="text" id="txtDate" ltype="date"
				validate="{required:true}" /></td>
		</tr>
	</table>
	<div>
		<textarea id="elm1" name="cncontent" rows="15" cols="20"
			style="width: 100%; height:200px;">
			${model.cncontent}
			</textarea>
	</div>
	<div style="width:100%; margin-top:50px;">
		<textarea id="elm2" name="encontent" rows="15" cols="20"
			style="width: 100%; height:200px;">
			${model.encontent}
		</textarea>
	</div>
	<br /> <input name="id" type="hidden" value="${model.id}" />
	<div class="form-group">
		<input value="提交" type="button" class="form-control btn btn-success"
			onclick="submitEdit('admAddNews')" />
	</div>
</form>
