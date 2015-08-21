<%@ page language="java" import="java.util.*"
	pageEncoding="UTF-8"%>
<%@include file="subPages/css.jsp"%>
<body ng-app="app">
	<%@include file="subPages/top.jsp"%>
	<%@include file="subPages/nav.jsp"%>
	<div class="w">
			<%@include file="subPages/slide.jsp"%>
	</div>
	<div class="w index-product">
		<div class="container pb30" ng-controller="productController">
			<div class="tc match-color f30 lh26 p30">
				<s:property value="@Static@getStatic('L_BRIEF').lang"/>
				<div class="f14 C555 tc mt10">
					<s:property value="@Static@getStatic('BRIEF_CONT').lang" escape="false"/>
				</div>
			</div>
			<div class="row mt0 ah">
					<div class="col-md-4 p30 pt10 tc"  ng-repeat="item in list.Rows track by $index">
						<a ng-href="go?p=detail&p_tag={{item.tag}}">
							<img class="img-circle" src="{{item.imgUrl}}">
						</a>
						<div class="p30 pt20 C999 f12 brief tc lh26 product">
							<a class="f16 C555" ng-href="go?p=detail&p_tag={{item.tag}}">{{item.title}}</a>
							<br/>
							{{item.brief}}
							<br/>
						</div>
						<div class="tc">
							<a class="btn btn-default btn-xs C999 f12" ng-href="go?p=detail&p_tag={{item.tag}}">MORE <span class="glyphicon glyphicon-arrow-right"></span></a>
						</div>
					</div>
			</div>
		 </div>
	</div>
	
	<div class="w index-news hidden-xs">
		<div class="container pb50" ng-controller="inforController">
			<div class="tc mt20">
				<img src="subjects/tradition/newsCenter.png" class="img">
			</div>
			<div class="row mt0 ah news">
				<div class="col-md-4 p30 pt10"  ng-repeat="item in list.Rows track by $index">
					<a ng-href="go?p=detail&id={{item.id}}"><img alt="" src="{{item.imgUrl}}"></a>
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
