<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<base href="<%=basePath%>">

<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<!-- Import google fonts -->
<link
	href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light"
	rel="stylesheet" type="text/css" />

<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="assets/ico/favicon.ico"
	type="image/x-icon" />
<link rel="apple-touch-icon" href="assets/ico/apple-touch-icon.png" />

<!-- start: CSS file-->

<!-- Vendor CSS-->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="assets/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />

<!-- Plugins CSS-->

<!-- Theme CSS -->
<link href="assets/css/jquery.mmenu.css" rel="stylesheet" />

<!-- Page CSS -->
<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/add-ons.min.css" rel="stylesheet" />

<style>
footer {
	display: none;
}
</style>

<!-- end: CSS file-->


<!-- Head Libs -->
<script src="assets/plugins/modernizr/js/modernizr.js"></script>
<title>My JSP starting page</title>
<script src="assets/js/jquery-1.7.1.js"></script>
<link rel="stylesheet"
	href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css">
<script src="assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
<link rel="stylesheet" href="jqueryui/style.css">
<script>
	$(function() {
		$("#dialog").dialog({
			autoOpen : false,
			show : {
				effect : "blind",
				duration : 1000
			},
			hide : {
				effect : "explode",
				duration : 1000
			}
		});

		$("#opener").click(function() {
			$("#dialog").dialog("open");
		});
	});
</script>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<body>
	<jsp:include page="home.jsp"></jsp:include>




	<div class="row" id="1">
		<div class="main " style="min-height: 767px;">
			<div class="page-header">
				<div class="pull-right">
					<h2>个人档案</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-10">

					<div id="dialog-confirm" title="Empty the recycle bin?">
						<div id="dialog" title="基本的对话框">
							<div >
								<div >
									<h2>个人档案</h2>
								</div>
							</div>
								<div >
								<div >
									<h2>个人档案</h2>
								</div>
							</div>
								<div >
								<div >
									<h2>个人档案</h2>
								</div>
							</div>
								<div >
								<div >
									<h2>个人档案</h2>
								</div>
							</div>
						</div>
						<input type="button" id="opener" value="fas" class="danger-btn" />
					</div>
				</div>
			</div>

		</div>

	</div>
</body>
</html>

