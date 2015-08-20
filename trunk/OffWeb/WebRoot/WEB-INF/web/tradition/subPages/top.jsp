<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<div class="top-bar second-bg a ah">
	<div class="container">
		<div class="fl hidden-xs">
					<i class="iconfont">&#xe619;</i>&nbsp;&nbsp;
					<s:iterator value="@Static@getStatic('NOTICE')">
						<a href="${link}" target="_blank">${lang}</a>
					</s:iterator>
		</div>
		<div class="fr">
			<s:iterator
				value="@Static@getStaticdatas('TOPBAR_R','NO')" status="st">
				<a href="${link}">${description}${lang}</a>
				<s:if test="!#st.last">
					<span>|</span>
				</s:if>
			</s:iterator>
		</div>
	</div>
</div>
<!-- jsp页面跳转、分页传递的参数 -->
<input type="hidden" id="params" value="${params}"> 
