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
<script src="assets/plugins/modernizr/js/modernizr.js"></script>
<title>My JSP starting page</title>
<script src="assets/js/jquery-1.7.1.js"></script>
<script src="jquery.js" type="text/javascript"></script>
<script src="jquery.inputmask.js" type="text/javascript"></script>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<body>
	<jsp:include page="/view/home.jsp"></jsp:include>
	<s:form id="form" action="Update" method="post">
		<div class="row">
			<div class="main " style="min-height: 767px;">
				<div class="page-header">
					<div class="pull-right">
						<h2>个人档案</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-10">
						<div class="col-md-3"></div>
						<div class="col-md-8">
							<div class="panel">

								<div class="panel-body">
									<form class="form-horizontal " enctype="multipart/form-data"
										method="post" action="">

                        <hr />
										<div class="form-group">
											<label class="col-md-4 control-label" style="font-size:15px;">昵称</label>
											<div class="col-md-6">
												<s:property value="LookUser.userName" />


											</div>

										</div>


										<br>
										<hr />
										<div class="form-group">
											<label class="col-md-4 control-label" style="font-size:15px;">权限</label>
											<div class="col-md-6">
												<s:property value="LookUser.userName" />

											</div>
										</div>
										<br>
										<hr />
										<div class="form-group">
											<label class="col-md-4 control-label" style="font-size:15px;">账户</label>
											<div class="col-md-6">
												<s:property value="LookUser.userName" />
												<br>
											</div>
										</div>
										<br>
										<hr />
										<div class="form-group">
											<label class="col-md-4 control-label" style="font-size:15px;">账户余额</label>
											<div class="col-md-6">
												<s:property value="%{#session.user.userBalance}" />
												<br>
											</div>
										</div>
										<br>
										<hr />
										<div class="form-group">
											<label class="col-md-4 control-label" style="font-size:15px;">邮箱</label>
											<div class="col-md-6">
												<s:property value="%{#session.user.userEmail}" />

											</div>
										</div>
										<br>
										<hr />
										<div class="form-group">
											<label class="col-md-4 control-label" style="font-size:15px;">手机号</label>
											<div class="col-md-6">
												<s:property value="%{#session.user.userNumber}" />
												<br>
											</div>
										</div>
										<br>
										<hr />
										<div class="form-group">
											<label class="col-md-4 control-label" style="font-size:15px;">性别</label>
											<div class="col-md-6">
												<s:property value="%{#session.user.userSex}" />

											</div>
										</div>
										<br>
										<hr />
										<div class="form-group">
											<label class="col-md-4 control-label" style="font-size:16px;">签名档</label>
											<div class="col-md-6">
												<s:property value="%{#session.user.userMoto}" />

											</div>
										</div>
										<br>
										<hr />
										<div class="form-group">
											<label class="col-md-4 control-label" style="font-size:16px;">故乡</label>
											<div class="col-md-6">
												<s:property value="%{#session.user.userHometown}" />


											</div>
										</div>
<br>
										<hr />
										<div class="form-group">
											<label class="col-md-4 control-label" style="font-size:16px;">现居地</label>
											<div class="col-md-6">
												<s:property value="%{#session.user.userLocation}" />


											</div>
										</div>
										<br> <br>
										<hr />
										<div class="form-group">
											<label class="col-md-4 control-label" style="font-size:16px;">工作</label>
											<div class="col-md-6">
												<s:property value="%{#session.user.userJob}" />

											</div>
										</div>
										<br>

										<hr />
										<div class="form-group">
											<label class="col-md-4 control-label" style="font-size:16px;">生日</label>
											<div class="col-md-6"></div>
										</div>
										<br>
										<hr />
										<div class="form-group">
											<label class="col-md-4 control-label" style="font-size:16px;">年龄</label>
											<div class="col-md-6">
												<s:property value="%{#session.user.userAge}" />

											</div>
										</div>
										   <br>
                        <hr />

									</form>
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



