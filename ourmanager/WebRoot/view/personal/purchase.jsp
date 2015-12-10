<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<link rel="apple-touch-icon" sizes="57x57"
	href="assets/ico/apple-touch-icon-57x57.png" />
<link rel="apple-touch-icon" sizes="72x72"
	href="assets/ico/apple-touch-icon-72x72.png" />
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/ico/apple-touch-icon-76x76.png" />
<link rel="apple-touch-icon" sizes="114x114"
	href="assets/ico/apple-touch-icon-114x114.png" />
<link rel="apple-touch-icon" sizes="120x120"
	href="assets/ico/apple-touch-icon-120x120.png" />
<link rel="apple-touch-icon" sizes="144x144"
	href="assets/ico/apple-touch-icon-144x144.png" />
<link rel="apple-touch-icon" sizes="152x152"
	href="assets/ico/apple-touch-icon-152x152.png" />

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

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->







<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>My JSP starting page</title>
<script src="assets/js/jquery-1.7.1.js"></script>
<script src="jquery.js" type="text/javascript"></script>
<script src="jquery.inputmask.js" type="text/javascript"></script>

<link rel="stylesheet"
	href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css">
<script src="assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
<link rel="stylesheet" href="jqueryui/style.css">

<script type="text/javascript">
	$(function() {
		//初始化加载第一页
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
	});
	$(document).ready(function() {

		$("#balance").click(function() {
			$("#dialog").dialog("open");

		});

	});
</script>
<style>
</style>

</head>

<body>
	<div id="dialog-confirm" title="Empty the recycle bin?"
		style="z-index:999">
		<div id="dialog" title="充值框" style="text-align:center">

			<div class="panel">
				<div class="panel-title-register text-right"></div>
				<form method="post" action="">
					<div class="form-group">
						<label for="money"><strong>金额</strong></label> <input
							id="billMoney" class="form-control" type="text"
							placeholder="填写充值金额" name="money"> <span
							class="help-block">每笔最高20万</span>
					</div>
					<div class="form-group">
						<label for="remark"><strong>备注</strong></label> <input id="remark"
							class="form-control" type="text" placeholder="有什么什么想和管理员说的呀"
							name="remark"> <span class="help-block">20字以内</span>
					</div>
					<table class="table" id="recharge">

						<tr>
							<td><span class="help-block"></span></td>
							<td><span class="help-block"></span></td>
							<td><span class="help-block"></span></td>
							<td><span class="help-block"></span></td>
							<td><button class="btn btn-primary" type="button">
									<i class="fa fa-lightbulb-o"></i> 确认充值
								</button></td>

						</tr>
					</table>


				</form>

			</div>

		</div>
	</div>
	<jsp:include page="/view/home.jsp"></jsp:include>
	<s:form id="form" action="Update" method="post">
		<div class="main sidebar-minified" style="min-height: 767px;">
			<div class="page-header">

				<div class="pull-right">
					<h2>个人消费记录</h2>
				</div>
			</div>
			<div class="div-relative" style="margin:0 auto;">

				<div class="row">
					<div class="col-lg-12">
						<div class="col-md-1"></div>
						<div class="col-md-10">

							<div class="panel">



								<div class="table-responsive">
									<table class="table" id="usermoney" style="text-align:center">
										<thead>
											<tr>
												<th>账单名</th>
												<th>消费/充值</th>
												<th>金额</th>
												<th>日期</th>
											</tr>
										</thead>
										<s:iterator value="purchaseList" id="pur">
											<tbody>
												<tr>

													<td>${bill.billName}</td>

													<td>${purchaseType}</td>
													<td>${purchaseMoney}</td>
													<td>${purchaseCreatetime}</td>


												</tr>

											</tbody>
										</s:iterator>
									</table>
									<table class="table" id="userbalance">

										<tr>
											<td><strong>个人余额</strong></td>
											<td><s:property value="%{#session.user.userBalance}" />
											</td>
											<td>
												<button class="btn btn-primary" type="button" id="balance">
													<i class="fa fa-lightbulb-o"></i> 充值
												</button>
											</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</s:form>

</body>
</html>