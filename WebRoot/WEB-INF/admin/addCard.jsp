<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<script src="admin/addPageInit.js?${JSCSS}" type="text/javascript"></script>
<form name="editForm" id="editForm">
	<table class="table table-bordered">
		<tr>
			<td>用户*:</td>
			<td>${model.phoneUser.id}</td>
		</tr>
		<tr>
			<td>所在省:</td>
			<td><input id="province" class="form-control" name="province"
				type="text" value="${model.province}"
				onclick="loadPick(event,360,240,'true','province','STATICDATA','','${model.province}','&p_code=PROVINCES&p_type=NO');" />
			</td>

		</tr>
		<tr>
			<td>所在市:</td>
			<td><input name="city" id="city" class="form-control"
				type="text" value="${model.city}"
				onclick="loadSubType('${model.city}','city','CITY','true','province')" />
			</td>

		</tr>
		<tr>
			<td>显示类型:</td>
			<td><s:select name="showType" cssClass="form-control"
					list="@cn.yitongworld.enu.ShowType@values()" listKey="name()"
					listValue="name" value="model.showType.name()" /></td>
		</tr>
		<s:if test="model.consumeTime==null">
			<tr>
				<td>批量生产:</td>
				<td><input name="batch" id="batch" class="form-control"
					type="text" value="${model.batch}"
					onclick="loadPick(event,360,240,'true','batch','STATICDATA','','${model.batch}','&p_code=BATCH&p_type=NO');" />
				</td>
			</tr>
			<tr>
				<td>电话卡密码:</td>
				<td><input name="password" type="text" class="form-control"
					value="${model.password}" /></td>
			</tr>
			<tr>
				<td>电话卡类型:</td>
				<td><s:select name="type" cssClass="form-control"
						list="@cn.yitongworld.enu.CardType@values()" listKey="name()"
						listValue="name" value="model.type.name()" /></td>
			</tr>
			<tr>
				<td>代销商:</td>
				<td><input name="agent.id" type="text" class="form-control"
					value="${model.agent.id}" /></td>
			</tr>
			<tr>
				<td>电话费用/时间m(分钟卡):</td>
				<td><input name="phoneFee" type="text" class="form-control"
					value="${model.phoneFee}" /></td>
			</tr>
			<tr>
				<td>分钟卡有效时间:</td>
				<td><input name="endTime" value="${model.endTime}"
					class="form-control" type="text" id="datetimepicker" /></td>
			</tr>
			<tr>
				<td>购物金额:</td>
				<td><input name="shopFee" type="text" class="form-control"
					value="${model.shopFee}" /></td>
			</tr>
			<tr>
				<td>梦想基金:</td>
				<td><input name="dreamFee" type="text" class="form-control"
					value="${model.dreamFee}" /></td>
			</tr>
			<tr>
				<td>标识:</td>
				<td><s:select name="flag" cssClass="form-control"
						list="@cn.yitongworld.enu.FlagType@values()" listKey="name"
						listValue="name()" value="model.flag" />
			</tr>
		</s:if>


	</table>
	<br /> <input name="id" type="hidden" value="${model.id}" />
	<div class="form-group">
		<input type="button" value="提交" class="form-control btn btn-success"
			onclick="submitEdit('admAddCard')" />
	</div>
</form>
<%@include file="datePicker.jsp"%>