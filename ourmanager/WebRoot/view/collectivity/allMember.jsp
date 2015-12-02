<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<!-- Vendor CSS-->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="assets/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
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
<script src="assets/plugins/modernizr/js/modernizr.js"></script>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>My JSP starting page</title>
<link rel="stylesheet" type="text/css" href="assets/css/fenye.css"
	media="screen" />
<script src="assets/js/jquery-1.3.2.js"></script>
<script src="assets/js/jquery.paginate.js" type="text/javascript"></script>
<script type="text/javascript">
	function func2(userid) {
		alert(userid);
		$("#pfp").val(userid);
		$("#pf").submit();
	}
	$(document).ready(function() {
		func(1);
		$(".test").click(function() {
			alert("dfasdf");
			this.submit();
		});
	});
	$(function() {
		//初始化加载第一页
		$("#demo5").paginate({
			count : ${LAGE_PAGE},
			start : 1,
			display : 10,
			border : false,
			text_color : '#888',
			background_color : '#EEE',
			text_hover_color : 'black',
			background_hover_color : '#CFCFCF',
			images : false,
			mouse : 'press',
			onChange : function(page) {
				func(page);
			}
		});
	});


	function func(i) {
		$("#table").empty();
		//提交的参数，name和inch是和struts action中对应的接收变量
		var params = {
			page : i
		};
		$
				.ajax({
					type : "POST",
					url : "menberlistAction",
					data : params,
					dataType : 'json',
					success : function(data) {
						console.log(data);
						var users = data.users;

						$
								.each(
										users,
										function(i, item) {
											var name = "---";
											if (item.userName != null)
												name = item.userName;
											var sex = "---";
											if (item.userName != null)
												sex = item.userSex;
											var email = "---";
											if (item.userEmail != null)
												email = item.userEmail;
											var limit = "未命名";
											if (item.userLimit == 0)
												limit = "超级管理员";
											else if (item.userLimit == 1)
												limit = "资金管理员 ";
											else if (item.userLimit == 2)
												limit = "管理员";
											else if (item.userLimit == 3)
												limit = "成员";
											console.log(item.userid + ","
													+ item.userName);
											var html = "<tr  ondblclick=\"func2("+item.userid+")\" onmouseover=\"this.style.backgroundColor='#D1EEEE'\" onmouseout=\"this.style.backgroundColor=''\" style=\"\">"
													+ "<td>"
													+ item.userid
													+ "</td>"
													+ "<td>"
													+ name
													+ "</td>"
													+ "<td>"
													+ sex
													+ "</td>"
													+ "<td>"
													+ email
													+ "</td>"
													+ "<td>"
													+ item.userNumber
													+ "</td>"
													+ "<td>"
													+ item.userBalance
													+ "</td>"
													+ "<td>"
													+ limit
													+ "</td> </tr>";

											$("#table").append(html);

											//		<!-- <td><button class="label label-warning" type="button" >
											//                       查看详情
											// </button></td> -->
										});

					},
					error : function(json) {
						alert("json=" + json);
						console.log(json);
						return false;
					}
				});
	}
</script>
</head>

<body>
	<jsp:include page="/view/home.jsp"></jsp:include>
	<s:form id="pf" action="LookUserDetail" method="post">
		<div class="main sidebar-minified" style="min-height: 767px;">
			<div class="page-header">

				<div class="pull-right">
					<h2>通讯录</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel"
						style="width: 870px; padding-left: 100px; border-left-width: 0px; margin-left: 130px; padding-top: 50px;">


						<div class="panel-body"
							style="padding-bottom: 10px; padding-right: 15px; width: 600px; padding-left: 0px; border-left-width: 10px; height: 620px;">
							<div id="paginationdemo" class="demo">
								<div class="table-responsive">
									<input type="hidden" id="pfp" name="LookUserid" />
									<br />
									<table class="table">
										<thead>
											<tr>
												<th>账号</th>
												<th>昵称</th>
												<th>性别</th>
												<th>邮箱</th>
												<th>电话</th>
												<th>余额</th>
												<th>权限</th>
											</tr>
										</thead>
										<tbody id="table">
										</tbody>
									</table>
								</div>

								<div class="col-lg-12">

									<div class="col-lg-6">

										<div id="demo5"></div>
									</div>
									<div class="col-lg-6">
										&nbsp;&nbsp;&nbsp;

										<s:textfield id="pj" cssClass="btn btn-default"
											cssStyle="width:50px;height:30px"></s:textfield>

										<button class="btn btn-primary" style="width:60px;height:30px"
											onclick="func(document.getElementById('pj').value)"
											type="button">跳转</button>
											<button type="submit" >sfs</button>
											
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