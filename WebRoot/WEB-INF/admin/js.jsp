<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- 提示窗口 -->
<div id="lookUp" class="look-up">
	<div id="lookUpContent" class="look-up-content"></div>
	<i class="iconfont i-close" onclick="iClose('lookUp')">&#xe61a;</i>
</div>
<!-- 对话框 -->
<div class="imodal modal fade" id="myModal" role="dialog"
	aria-label="myModalLabel" aria-hidden="true">
	<div id="modal-dialog" class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title"></h4>
			</div>
			<div class="modal-body" id="modal-body"></div>
			<div class="modal-footer">
				<button type="button" class="btn btn btn-danger"
					data-dismiss="modal">关闭</button>
			</div>
		</div>
	</div>
</div>
<script src="js/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
<script src="js/validateAndRefresh.js?${JSCSS}"></script>
<script src="js/core.js?${JSCSS}"></script>
<script src="admin/angular.js?${JSCSS}"></script>
<script src="admin/myAngular.js?${JSCSS}"></script>
<script src="admin/admin.js?${JSCSS}"></script>
</body>
</html>