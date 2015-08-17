<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<div id="navbar" class="navbar w navbar-inverse no-radius m0" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header" style="position:relative;">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
			</button>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-left">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle nav-user" data-toggle="dropdown">
						<span class="glyphicon glyphicon-user"></span>
						&nbsp;&nbsp; ${sessionScope.userName}
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="http://yitongworld.com/index">亿通官网</a>
						</li>
						<li class="divider m0"></li>
						<li><a href="logOut">注销</a>
						</li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li>
					<a onclick="callAjaxByName('iUrl=getUrlContent|tipTime=-1|isHowMethod=updateDivWithImg|iTarget=lookUpContent|iLoading=PROPUP请稍后...|iParams=&url=${PHONE_URL}/call?method=online');"
					  target="main">
					<span class="glyphicon glyphicon-phone-alt"></span>&nbsp;在线人数&nbsp;</a>
				</li>
				<li>
					<a onclick="callAjaxByName('iUrl=clear|isHowMethod=updateDivWithImg|iTarget=lookUpContent|iLoading=PROPUP请稍后...');">
					<span class="glyphicon glyphicon-refresh"></span>&nbsp;更新缓存&nbsp;</a>
				</li>
				<li>
					<a href="logOut"><span class="glyphicon glyphicon-log-out"></span>&nbsp;退出&nbsp;</a>
				</li>
			</ul>
		</div>
	</div>
</div>