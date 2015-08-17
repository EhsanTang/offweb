<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<form name="editForm" id="editForm">
	<table class="table table-bordered">
		<tr>
			<td>账单id:</td>
			<td>${model.id}</td>
		</tr>
		<tr>
			<td>订单id:</td>
			<td>${model.orderid}</td>
		</tr>
		<tr>
			<td>电话类型:</td>
			<td>${model.type}</td>
		</tr>
		<tr>
			<td>主叫号码:</td>
			<td>${model.caller}</td>
		</tr>
		<tr>
			<td>被叫号码:</td>
			<td>${model.called}</td>
		</tr>
		<tr>
			<td>通话开始时间:</td>
			<td>${model.starttime}</td>
		</tr>

		<tr>
			<td>通话结束时间:</td>
			<td>${model.endtime}</td>
		</tr>
		<tr>
			<td>通话时间:</td>
			<td>${model.differ}m(${model.differSecond}s)</td>
		</tr>
		<tr>
			<td>标示:</td>
			<td>${model.flag}:<s:property value="model.flagName" /></td>
		</tr>
		<tr>
			<td>外呼显号标示:</td>
			<td>${model.subtype}</td>
		</tr>

		<tr>
			<td>一路呼叫的唯一标示:</td>
			<td>${model.callSid}</td>
		</tr>
		<tr>
			<td>账单类型:</td>
			<td>${model.type}</td>
		</tr>
		<tr>
			<td>挂机类型:</td>
			<td>${model.byetype}：<s:property value="model.hangupType.name" />
			</td>
		</tr>
		<tr>
			<td>用户版本号:</td>
			<td>${model.user.version}(注：A_1.2.0,I_1.0.0及以上,“异常：主叫未接通”提示才有效)</td>
		</tr>
		<tr>
			<td>是否异常:</td>
			<td>${model.isException}</td>
		</tr>
		<tr>
			<td>主叫归属地:</td>
			<td><span id="caller"><a href="javascript:void(0);"
					onclick="getPhoneArea('${model.caller}','caller');">获取归属地</a></span></td>
		</tr>
		<tr>
			<td>被叫归属地:</td>
			<td><span id="called"><a href="javascript:void(0);"
					onclick="getPhoneArea('${model.called}','called');">获取归属地</a></span></td>
		</tr>
		<tr>
			<td>请求类型:</td>
			<td>${model.action}</td>
		</tr>

		<tr>
			<td>呼叫计费的私有数据:</td>
			<td>${model.billdata}</td>
		</tr>
		<tr>
			<td>故障备注:</td>
			<td>${model.remark}</td>
		</tr>
	</table>
</form>
