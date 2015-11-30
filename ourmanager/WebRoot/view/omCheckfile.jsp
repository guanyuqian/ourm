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

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->






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
	<jsp:include page="home.jsp"></jsp:include>
	<s:form id="form" action="Update" method="post">
 <div class="row">
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
     <div class="panel" >
       
<div class="panel-body" >
<form class="form-horizontal " enctype="multipart/form-data" method="post" action="">
	
					  <hr />
					 
						<div class="form-group">
							<label class="col-md-4 control-label"style="font-size:15px;">集体名</label>
							<div class="col-md-6">
							<s:property  value="%{#session.user.om.omName}"/> 
							
						
							</div>
						</div>
						  <br>
					  <hr />
					 
					      <div class="form-group">
							<label class="col-md-4 control-label"style="font-size:15px;">集体描述</label>
							<div class="col-md-6">
							<s:property value="%{#session.user.om.omDes}"/> 
							
							</div>
						</div>
						  <br>
					  <hr />
					      <div class="form-group">
							<label class="col-md-4 control-label"style="font-size:15px;">集体地址</label>
							<div class="col-md-6">
							<s:property  value="%{#session.user.om.omLocation}"/> 
						
							</div>
						</div>
						  <br>
					  <hr />
						<div class="form-group">
							<label class="col-md-4 control-label"style="font-size:15px;">集体余额</label>
							<div class="col-md-6">
								<s:property value="%{#session.user.om.omMoney}"/> 
								
							</div>
						</div>
						  <br>
					<hr />
						<div class="form-group">
							<label class="col-md-4 control-label"style="font-size:15px;" >资金账户</label>
							<div class="col-md-6">
							<s:property value="%{#session.user.om.omBank}"/> 
                        
                        </div>
                        </div>
                        <br>
                        <hr />
						<div class="form-group">
							<label class="col-md-4 control-label"style="font-size:15px;" >集体人数</label>
							<div class="col-md-6">
					      <s:property  value="%{#session.user.om.headcount}"/> 
								
							
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
					