<%@ page language="java" import="java.util.*"
	pageEncoding="UTF-8"%>
<%@include file="subPages/css.jsp"%>
<body>
	<%@include file="subPages/top.jsp"%>
	<%@include file="subPages/nav.jsp"%>
	<div class="w">
			<%@include file="subPages/slide.jsp"%>
	</div>
	<div class="w index-news">
		<div class="container" ng-app="app" ng-controller="webController">
			<input id="url" type="hidden" value="newsList">
			<div class="row mt20 ml-5 mr-5">
				<div class="col-md-4 p5"  ng-repeat="item in list.Rows track by $index">
					<img alt="" src="{{item.imgUrl}}">
					<div class="bg-white p10">
						<a ng-href="go?p=detail&id={{item.id}}">{{item.title}}</a>
						{{item.brief}}
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
