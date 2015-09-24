<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="navbar navbar-inverse primary-bg n-border no-radius shadow a">
			<div class="container">
			<a href="index"><img class="logo fl mt15 mr30" src="${LOGOIMG}" /></a>
				<div class="navbar-header p0 mt10">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
			<div id="navbar" class="navbar-collapse collapse p0">
				<ul class="nav navbar-nav roman">
					<s:iterator
						value="@Static@getStaticdatas('MENU','MENU')">
						<li><a class="f16 pl30 pr30 transition <s:if test="code.equals(#request.currPage)">match-bg</s:if>" href="${link}">${lang}</a></li>
					</s:iterator>
					<!--  <li class="active"><a href="#">Home</a></li>-->
				</ul>
			</div>
			</div>
</div>
