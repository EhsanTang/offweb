<%@ page language="java" import="java.util.*"
	pageEncoding="UTF-8"%>
<%@include file="subPages/css.jsp"%>
<body>
	<%@include file="subPages/top.jsp"%>
	<%@include file="subPages/nav.jsp"%>
	<div class="w">
			<%@include file="subPages/slide.jsp"%>
	</div>
	<div class="w index-product">
		<div class="tc match-color p30 f30 lh26">
			<s:property value="@Static@getStatic('L_BRIEF').lang"/>
			<div class="f14 C555 tc mt10">
				<s:property value="@Static@getStatic('BRIEF_CONT').lang" escape="false"/>
			</div>
		</div>
		
		
	</div>
	
	<div class="w index-news hidden-xs">
		<div class="container pb50" ng-app="app" ng-controller="webController">
			<div class="tc mt20">
				<img src="subjects/tradition/newsCenter.png" class="img">
			</div>
			<input id="url" type="hidden" value="newsList">
			<div class="row mt0 ah news">
				<div class="col-md-4 p30 pt10"  ng-repeat="item in list.Rows track by $index">
					<img alt="" src="{{item.imgUrl}}">
					<div class="bg-white p30 pt20 C999 f14 brief">
						<a class="f18 C555" ng-href="go?p=detail&id={{item.id}}">{{item.title}}</a>
						<br/>
						{{item.brief}}
						<br/>
						<a class="match-color" ng-href="go?p=detail&id={{item.id}}">READ MORE</a>
						<div class="mt10 f12 CDDD">
							<i class="iconfont f30 C999">&#xe64a;</i>&nbsp;&nbsp;{{item.date}}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<%@include file="subPages/footer.jsp"%>
	<script type="text/javascript">
		
	</script>
</body>
</html>
