<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
	<script type="text/javascript">
		function pickCheck(id) {
			id = "#" + id;
			if ($(id).attr("checked")) {
				$(id).attr("checked", false);
			} else {
				$(id).attr("checked", true);
			}
		}
		function pickMouseOver(id) {
			id = "#" + id;
			$(id).css("background-color", "#DDD");
		}
		function pickMouseOut(id) {
			id = "#" + id;
			$(id).css("background-color", "transparent");
		}
		function setPick() {
			var tagId = document.getElementById('tag').value;
			var radio = document.getElementById('radio').value;
			var length = document.getElementsByName('cid').length;
			var checkBox = "";
			for ( var i = 0; i < length; i++) {
				if (radio == 'true') {
					if (document.getElementsByName('cid')[i].checked == true) {
						document.getElementById(tagId).value = document.getElementsByName('cid')[i].value;
						break;
					}
				} else {
					if (document.getElementsByName('cid')[i].checked == true) {
						checkBox = checkBox
								+ document.getElementsByName('cid')[i].value
								+ ',';
					}
				}
			}
			if (radio == 'false')
				document.getElementById(tagId).value = checkBox;
			//回调函数
			var iCallBack='${iCallBack}';
			var iCallBackParam='${iCallBackParam}';
			if(iCallBack){
				if (iCallBackParam) {
					iCallBack(iCallBackParam);
				} else {
					eval(iCallBack)();
				}
			}
			//关闭对话框
			iClose('lookUp');
		}
		document.onkeydown = function() {
			if (event.keyCode == 13) {
				setPick();
			}
		}
	</script>
	<div class="form-group">
					<blockquote>
						<p class="f12 fb pl10 C999">选择后回车即可快速确认</p>
					</blockquote>
				</div>
	
	<s:if test="radio.equals('true')">
		<s:iterator value="picks">
			<div style="padding:5px;" id="d_${id}" onclick="pickCheck('${id}');"
				onmouseout="pickMouseOut('d_${id}');"
				onmouseover="pickMouseOver('d_${id}');">
				<input id="${id}" type="radio" <s:if test="def.equals(id)">checked</s:if> name="cid" value="${value}">&nbsp;&nbsp;${name}
			</div>
		</s:iterator>
	</s:if>
	<s:else>
		<s:iterator value="picks">
			<div style="padding:5px;" id="d_${id}" onclick="pickCheck('${id}');"
				onmouseout="pickMouseOut('d_${id}');"
				onmouseover="pickMouseOver('d_${id}');">
				<input id="${id}" type="checkbox" name="cid"
					<s:if test="def.contains(id)">checked</s:if> value="${value}">&nbsp;&nbsp;${name}<br>
			</div>
		</s:iterator>
	</s:else>

	<div class="fr w border-t ml10 tr pt10 form-group">
		<input type="hidden" id="radio" value="${radio}" /> 
		<input type="hidden" id="tag" value="${tag}" /> 
		<button type="button" class="btn btn-info form-control" onclick="setPick()">选择</button>
	</div>
