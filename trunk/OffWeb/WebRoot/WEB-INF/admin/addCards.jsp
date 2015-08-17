<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<form name="form1" method="post" action="manageAddCards" id="form1">
	<table class="table table-bordered">
		<tr>
			<td>数量:</td>
			<td><input class="form-control" name="number" type="text"></td>
		</tr>
		<tr>
			<td>所在省:</td>
			<td><input class="form-control" id="province" name="province"
				type="text"
				onclick="loadPick(event,360,240,'true','province','STATICDATA','','','&p_code=PROVINCES&p_type=NO');" />
			</td>
		</tr>
		<tr>
			<td>所在市:</td>
			<td><input class="form-control" name="city" id="city"
				type="text"
				onclick="loadSubType('','city','CITY','true','province')" /></td>
		</tr>
		<tr>
			<td>批量生产:</td>
			<td><input class="form-control" name="batch" id="batch"
				type="text"
				onclick="loadPick(event,360,240,'true','batch','STATICDATA','','','&p_code=BATCH&p_type=NO');" />
			</td>
		</tr>

		<tr>
			<td>电话卡类型:</td>
			<td><s:select cssClass="form-control" name="type"
					list="@cn.yitongworld.enu.CardType@values()" listKey="name()"
					listValue="name" /></td>
		</tr>
		<tr>
			<td>显示类型:</td>
			<td><s:select cssClass="form-control" name="showType"
					list="@cn.yitongworld.enu.ShowType@values()" listKey="name()"
					listValue="name" value="model.showType.name()" /></td>
		</tr>
		<tr>
			<td>代销商:</td>
			<td><input class="form-control" name="agent.id" type="text" /></td>
		</tr>
		<tr>
			<td>电话费用:</td>
			<td><input class="form-control" name="phoneFee" type="text" /></td>
		</tr>
		<tr>
			<td>购物金额:</td>
			<td><input class="form-control" name="shopFee" type="text" /></td>
		</tr>
		<tr>
			<td>梦想基金:</td>
			<td><input class="form-control" name="dreamFee" type="text" /></td>
		</tr>
		<tr>
			<td>标识:</td>
			<td><s:select cssClass="form-control" name="flag"
					list="@cn.yitongworld.enu.FlagType@values()" listKey="name"
					listValue="name()" />
		</tr>
	</table>
	<div class="form-group">
			<input type="submit" value="提交" id="Button1"
			class="form-control btn btn-success" />
	</div>
</form>
