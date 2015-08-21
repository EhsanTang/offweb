<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<link rel="stylesheet" href="admin/kediter/themes/default/default.css" />
<script charset="utf-8" src="admin/kediter/kindeditor-min.js"></script>
<script charset="utf-8" src="admin/kediter/lang/zh_CN.js"></script>
<script src="admin/addPageInit.js?${JSCSS}" type="text/javascript"></script>
<form name="editForm" id="editForm">
	<table class="table table-bordered">
		<tr>
			<td>
				<div class="input-group">
					<div class="input-group-addon">中文标题</div>
					<input name="cntitle" value="${model.cntitle}" type="text"
						class="form-control" />
				</div>
			</td>
			<td>
				<div class="input-group">
					<div class="input-group-addon">英文标题</div>
					<input name="entitle" value="${model.entitle}" type="text"
						class="form-control" />
				</div>
			</td>
		</tr>

		<tr>
			<td>
				<div class="input-group">
					<div class="input-group-addon">新闻类型</div>
					<input id="type" class="form-control" name="type" type="text"
						value="${model.type}"
						onclick="loadPick(event,360,240,'true','type','STATICDATA','','${model.type}','&p_code=NEWSTYPE&p_type=NO');" />
				</div>
			</td>
			<td>
				<div class="input-group">
					<div class="input-group-addon">展示类型</div>
					<input id="style" class="form-control" name="style" type="text"
						value="${model.style}"
						onclick="loadPick(event,360,240,'true','style','STATICDATA','','${model.style}','&p_code=${SUBJECT}&p_type=NO&p_target=value');">
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<div class="input-group w">
					<div class="input-group-addon">是否可评</div>
					<div class="form-control">
						<input type="radio" name="canComment"
							<s:if test="model.canComment">checked</s:if> value="true">&nbsp;&nbsp;
						是 <input type="radio" name="canComment"
							<s:if test="!model.canComment">checked</s:if> value="false">&nbsp;&nbsp;
						否
					</div>
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<div class="input-group w">
					<div class="input-group-addon">页面标签</div>
					<input name="tag" type="text" class="form-control"
						value="${model.tag}" />
				</div>
			</td>
		</tr>
		<tr>
			<td>中文简介: <textarea name="cnbrief" class="form-control"
					id="cnbrief" rows="3">${model.cnbrief}</textarea>
			</td>
			<td>英文简介: <textarea name="enbrief" class="form-control"
					id="enbrief" rows="3">${model.enbrief}</textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<div class="input-group w">
					<div class="input-group-addon">点击量:</div>
					<input class="form-control" name="click" type="text"
						value="${model.click}" readonly />
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<div class="input-group w">
					<div class="input-group-addon">新闻标识</div>
					<s:select name="flag"
						list="@cn.wegoteam.shop.enu.FlagType3@values()" listKey="name"
						cssClass="form-control" listValue="name()" value="model.flag" />
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<div class="input-group w">
					<div class="input-group-addon">媒体链接</div>
					<input name="url" type="text" class="form-control"
						value="${model.url}" />
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<div class="input-group w">
					<div class="input-group-addon">发布日期</div>
					<input class="form-control" name="date" value="${model.date}"
						type="text" id="datetimepicker" />
				</div>
			</td>
		</tr>
	</table>
	<div class="fl" style="width:49%;">
		<textarea id="elm1" name="cncontent" rows="15" cols="20"
			style="width: 100%; height:200px;">
			${model.cncontent}
			</textarea>
	</div>
	<div class="fr" style="width:49%;">
		<textarea id="elm2" name="encontent" rows="15" cols="20"
			style="width: 100%; height:200px;">
			${model.encontent}
		</textarea>
	</div>
	<input name="id" type="hidden" value="${model.id}" />
	<div class="cb mb20"></div>
	<div class="form-group">
		<input value="提交" type="button" class="form-control btn btn-success"
			onclick="submitEdit('admAddNews')" />
	</div>
</form>
<%@include file="datePicker.jsp"%>

