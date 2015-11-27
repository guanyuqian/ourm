<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script type="text/javascript">
	$(document).ready(function() {
		console.log();
	});
</script>
<script type="text/javascript">
function func(i) {
	    alert(i);
  
		//提交的参数，name和inch是和struts action中对应的接收变量
			var params = {
			page : i
		};
			$.ajax({
				type : "POST",
				url : "menberlistAction",
				data : params,
				dataType : 'json', 
				success : function(data) {
					console.log(data);//可在前台观看返回结果
					//var obj = $.parseJSON(data); //当使用dataType : 'text'时，使用这个方法解析json
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
	<s:form id="billMoney" action="Update" method="post">
		<div class="main sidebar-minified" style="min-height: 767px;">
			<div class="page-header">

				<div class="pull-right">
					<h2>通讯录</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="panel"
						style="width: 870px; padding-left: 100px; border-left-width: 0px; margin-left: 130px; padding-top: 50px;">


						<div class="panel-body"
							style="padding-bottom: 10px; padding-right: 15px; width: 600px; padding-left: 0px; border-left-width: 10px; height: 620px;">

							<div class="table-responsive">
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

									<s:iterator value="AllUsers" id="user">


										<tbody>
										<tr ondblclick="func1(${userid})" onmouseover="this.style.backgroundColor='#D1EEEE'"  onmouseout="this.style.backgroundColor=''" >
											
												<td>${userid}</td>
												<td>${userName}</td>
										
												<td>${userSex}</td>
												<td>${userEmail}</td>
												<td>${userNumber}</td>
												<td>${userBalance}</td>
																					
											<td><s:if test='userLimit ==0'>超级管理员       </s:if> 
                                                <s:if test='userLimit ==1'>资金管理员       </s:if> 
                                                <s:if test='userLimit ==2'>管理员       </s:if> 
                                               <s:if test='userLimit ==3'>成员     </s:if> 
                                           </td>
												<!-- <td><button class="label label-warning" type="button" >
                                      查看详情
       </button></td> -->
											</tr>
										</tbody>
									</s:iterator>
								</table>


						<div class="btn-toolbar" role="toolbar">
<div class="bk-margin-5 btn-group">
<c:forEach var="i" begin="1" end="9" step="1">
<button class="btn btn-default" type="button" id=i onClick="func(${i})" >${i} </button>
</c:forEach>

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