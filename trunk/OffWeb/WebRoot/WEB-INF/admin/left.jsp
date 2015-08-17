<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- <div class="panel panel-default panel-info">
	<div class="panel-heading">
		<span class="badge pull-right">date</span>
		<h4 class="panel-title">
			<a data-toggle="collapse" data-parent="#accordion"
				href="#msg1">tttttt</a>
		</h4>
	</div>
	<div id="msg1"
		class="panel-collapse collapse">
		<div class="panel-body">dddddddddddd</div>
	</div>
</div>
 -->
<div class="sidebar pt0 pb0 left-menu fl">
	<div class="logo pt20 pb15 pl15">
		<a href="index"><img class="nav-face mah40" src="images/ytwd.png" /></a>
	</div>
	<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
		<s:iterator value="@cn.wegoteam.shop.cache.StaticDataCache@getStaticdatas('ADMIN_MENU','NO')" status="st">
				<div class="panel panel-info no-radius n-border mt0">
					<div class="panel-heading no-radius" data-parent="#accordion">
						<a data-toggle="collapse" data-parent="#accordion" href="#${code}">
							<div class="f14 mt-3 fl mr10">${description}</div>
							<span class="hidden-xs">${name}</span>
							<span class="badge pull-right">${value}</span>
						</a>
					</div>
					<div id="${code}" class="panel-collapse collapse <s:if test="#st.first">in</s:if>">
						<s:iterator value="@cn.wegoteam.shop.cache.StaticDataCache@getStaticdatas(code,'NO')">
							<div class="panel-body n-border p0">
								<a class="menu-a" ${value} target="main">${name}</a>
							</div>
						</s:iterator>
				 	</div>
				</div>
		</s:iterator>
	</div>
</div>
