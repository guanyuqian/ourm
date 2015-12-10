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

<link href="assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
<link href="assets/plugins/fullcalendar/css/fullcalendar.css"
	rel="stylesheet" />
<link href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css"
	rel="stylesheet" />
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

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->






<title>My JSP starting page</title>
<script src="assets/js/plugins/placeholder/js/jquery.placeholder.min.js"></script>
<script src="assets/js/jquery-1.7.1.js"></script>
<script src="jquery.js" type="text/javascript"></script>
<script src="jquery.inputmask.js" type="text/javascript"></script>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script
		src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js">
	
	</script>
	<script type="text/javascript">
		$(function() {
			$(".datepicker").datepicker({
				language : "zh-CN",
				autoclose : true,//选中之后自动隐藏日期选择框
				clearBtn : true,//清除按钮
				todayBtn : true,//今日按钮
				format : "yyyy-mm-dd"//日期格式，详见 http://bootstrap-datepicker.readthedocs.org/en/release/options.html#format
			});
		});
	</script>
<script type="text/javascript">
	function test(i) {

		window.num = i;

	}

	function del() {

		alert(1);

		$("#ln").hide();
	}

	function func1(i) {

		$(i).hide();

	}

	function func2(i) {

		$(i).show();

	}
</script>
</head>

<body>
	<jsp:include page="/view/home.jsp"></jsp:include>
	<s:form id="form" action="Update" method="post">

		<div class="mm-page">
			<div class="container-fluid content">
				<div class="row">
					<div class="main " style="min-height: 767px;">
						<div class="page-header">
							<div class="pull-right">
								<h2>公告</h2>
							</div>
						</div>
						<div class="row mailbox">
							<div class="col-lg-1 col-md-2 col-sm-2 col-xs-10"></div>
							<div class="col-lg-9 col-md-8 col-sm-8 col-xs-10">
								<div class="panel bk-bg-white">
									<div class="panel-body mailbox-btn-action">
										<div class="col-sm-8 col-xs-12 bk-padding-5 text-center">
											<span class="item-action-group">
												
												<div class="col-sm-2 col-xs-12 bk-padding-5 text-center">
													<button class="item-action fa fa-trash-o" type="button"
														id="delete" onclick="del()"></button>
													<h5>清空</h5>
												</div>
												<div class="col-sm-2 col-xs-12 bk-padding-5 text-center">
													<a class="item-action fa fa-mail-reply" href="#"></a>
													<h5>返回</h5>
												</div>

											</span>
										</div>
									
									</div>
								</div>

								<div class="panel bk-bg-white">
									<div class="panel-body">
										<div class="col-md-12">
											<div id="message-reply" class="panel">
												<div class="panel-body message-reply">
												
														<div class="mailbox-compose" data-mailbox-view="compose"
															data-mailbox="">
															<h2>标题</h2>
															<s:textfield cssClass="form-control"
																style="height: 70px;"></s:textfield>
														<h2>正文</h2>
															<s:textarea cssClass="form-control"
																style="height: 270px;"></s:textarea>
														</div>
														
												
												</div>
											</div>

										</div>
														<div class="input-group">
												<span class="input-group-addon"> <i
													class="fa fa-calendar"></i>
												</span> <input type="text" class="datepicker" class="form-control"
													name="user.userBirthday" id="userBirthday"
													placeholder="请选择公告截止日期" />

											</div>
														
										<div class="text-right bk-margin-right-10">
<a class="btn btn-primary" href="#">
<i class="fa fa-send"></i>
提交
</a>
</div>
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
