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

<!-- end: CSS file-->


<!-- Head Libs -->
<script src="assets/plugins/modernizr/js/modernizr.js"></script>








<title>My JSP starting page</title>
<script src="assets/js/jquery-1.7.1.js"></script>
<script src="jquery.js" type="text/javascript"></script>
<script src="jquery.inputmask.js" type="text/javascript"></script>
<script src="assets/js/jsAddress.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				addressInit('s1', 's2', 's3', '${user.om.omProvince}',
						'${user.om.omCity}', '${user.om.omCounty}');

				$("#save").click(function() {
					if ($("#omname").val() == "") {
						alert("集体名不能为空！");
						return false;
					}

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
	<s:form id="form" action="Update" method="post">



		<div class="row" id="1">
			<div class="main " style="min-height: 767px;">
				<div class="page-header">
					<div class="pull-right">
						<h2>集体档案</h2>
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
										<div class="form-group">
											<label class="col-md-3 control-label" style="font-size:16px;"><span
												class="required">*</span>集体名</label>
											<div class="col-md-9">
												<s:textfield name="user.om.omName"
													value="%{#session.user.om.omName}" cssClass="form-control"></s:textfield>
											</div>
											<br> <br>
										</div>

										<div class="form-group">
											<label class="col-md-3 control-label" style="font-size:16px;">集体描述</label>
											<div class="col-md-9">
												<s:textarea name="user.om.omDes"
													value="%{#session.user.om.omDes}" cssClass="form-control"></s:textarea>
											</div>
											<br> <br>
										</div>

										<br> <br>
										<div class="form-group">
											<input type="hidden" name="user.userHometown" id="UH" /> <label
												class="col-md-3 control-label" style="font-size:16px;">所属地区</label>

											<div class="col-md-9">

												<select id="s1" class="col-md-3" name="omProvince">
												</select>&nbsp;&nbsp; <select id="s2" class="col-md-3" name="omCity">

												</select> &nbsp;&nbsp; <span id="seachdistrict_div"> <select
													id="s3" class="col-md-3" name="omCounty">
												</select></span> <br> <br>
											</div>
										</div>


										<div class="form-group">
											<label class="col-md-3 control-label" style="font-size:16px;">详细地址</label>
											<div class="col-md-9">
												<s:textarea name="user.om.omLocation"
													value="%{#session.user.om.omLocation}"
													cssClass="form-control"></s:textarea>
											</div>
											<br> <br>
										</div>
										<div class="form-group">

											<div class="col-md-9">
												<button id="save"
													class="btn btn-primary hidden-xs bk-margin-top-10"
													type="submit">保存</button>
												<button
													class="btn btn-primary btn-block btn-lg visible-xs bk-margin-top-10"
													type="submit" href="index.html">保存</button>
											</div>
										</div>

									</form>
								</div>

							</div>

						</div>
					</div>
				</div>
			</div>
		</div>


	</s:form>
	<script
		src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js">
		<script src="assets/js/jquery-1.7.1.js" type="text/javascript">
	</script>
	<script src="assets/js/pages/Area.js" type="text/javascript"></script>
	<script src="assets/js/pages/AreaData_min.js" type="text/javascript"></script>
	<script src="assets/js/pages/Area1.js" type="text/javascript"></script>
	<script src="assets/js/pages/AreaData_min1.js" type="text/javascript"></script>


</body>
</html>

