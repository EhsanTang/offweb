<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<form name="form1" method="post" action="exportCards" id="form1">
	<div></div>
	<table class="table table-bordered">
		<tr>
			<td>卡号（开始-结束）:</td>
			<td><input class="form-control" name="begin" type="text" /></td>
			<td><input class="form-control" name="end" type="text" /></td>
		</tr>
		<tr>
			<td>所在省:</td>
			<td colspan="2"><input class="form-control" id="province" name="province"
				type="text"
				onclick="loadPick(event,360,240,'true','province','STATICDATA','','','&p_code=PROVINCES&p_type=NO');" />
			</td>
		</tr>
		<tr>
			<td>所在市:</td>
			<td colspan="2"><input class="form-control" name="city" id="city"
				type="text"
				onclick="loadSubType('','city','CITY','true','province')" /></td>
		</tr>
		<tr>
			<td>批量生产:</td>
			<td colspan="2"><input class="form-control" name="batch" id="batch"
				type="text"
				onclick="loadPick(event,360,240,'true','batch','STATICDATA','','','&p_code=BATCH&p_type=NO');" />
			</td>
		</tr>

		<tr>
			<td>电话卡类型:</td>
			<td colspan="2"><select class="form-control" name="type">
					<option value="">所有类型</option>
					<s:iterator value="@cn.yitongworld.enu.CardType@values()">
						<option value='<s:property value="name()"/>'>${name}</option>
					</s:iterator>
			</select></td>
		</tr>
		<tr>
			<td>代销商:</td>
			<td colspan="2"><input class="form-control" name="agent.id" type="text" /></td>
		</tr>

	</table>
	<div class="form-group">
		<input type="submit" value="提交" id="Button1"
			class="form-control btn btn-success" />
	</div>
</form>
