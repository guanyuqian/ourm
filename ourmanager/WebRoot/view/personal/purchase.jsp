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
<script type="text/javascript">
	$(document).ready(function() {	
        	$("#money").hide();
		$("#balance").click(function() {
$("#money").show();

	});
		
	});
</script>
<style>
.div-relative{position:relative;margin:0 auto;}   
.div-a{ position:absolute;z-index:999;  left: 0; top: 0; right: 0; bottom: 0;
    margin: auto;  width:476px;top:80px;  height:280px;border-style:solid; border-width:5px;  border-top-color:#34495e}  

</style>

  </head>
  
  <body>

      <jsp:include page="/view/home.jsp"></jsp:include>
      <s:form id="form" action="Update" method="post">
      <div class="main sidebar-minified" style="min-height: 767px;">
      <div class="page-header">

<div class="pull-right" >
<h2>个人消费记录</h2>
</div>
</div>
<div class="div-relative"  style="margin:0 auto;">
 <div id="money"class="div-a" style="text-align:center" style="margin:0 auto;"><jsp:include  page="Recharge.jsp"></jsp:include></div>

      <div class="row">
      <div class="col-lg-12">
      
      
      <div class="panel" >
     

       
       <div class="table-responsive" >
       <table class="table" id="usermoney">
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

<td>${purchaseType} </td>
<td>${purchaseMoney}</td>
<td>${purchaseCreatetime} </td>


</tr>

</tbody>
</s:iterator >
        </table>
        <table class="table"  id="userbalance">
  
  <tr>
    <td><strong>个人余额</strong></td>
    <td><s:property  value="%{#session.user.userBalance}"/> </td>
    <td> <button class="btn btn-primary" type="button" id="balance">
      <i class="fa fa-lightbulb-o"></i>
                                      充值
       </button></td>
  </tr>
</table>
</div>
</div>
</div>
      </div>
      </div>
      </div>
  
      </s:form>
   
  </body>
</html>