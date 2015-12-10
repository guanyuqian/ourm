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
<script type="text/javascript">
	console.log(${Notices});
	console.log(${LAGE_PAGE});
	function test(i) {

		window.num=i;
	
	}		  
	 function del(){
	
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
													<a class="item-action fa fa-star" href="#"></a>
													<h5>收藏</h5>
												</div>
												<div class="col-sm-2 col-xs-12 bk-padding-5 text-center">
													<a class="item-action fa fa-star-o" href="#"></a>
													<h5>取消收藏</h5>
												</div>
												<div class="col-sm-2 col-xs-12 bk-padding-5 text-center">
													<button class="item-action fa fa-trash-o" type="button" id="delete" onclick="del()"></button>
													<h5>删除</h5>
												</div>
												<div class="col-sm-2 col-xs-12 bk-padding-5 text-center">
													<a class="item-action fa fa-tags" href="#"></a>
													<h5>添加</h5>
												</div>

											</span>
										</div>
										<div class="col-sm-4 col-xs-12">
											<div class="search bk-padding-5">
												<div class="input-group input-search">
													<input id="q" class="form-control" type="text"
														placeholder="Search..." name="q"> <span
														class="input-group-btn">
														<button class="btn btn-default" type="submit">
															<i class="fa fa-search"></i>
														</button>
													</span>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="panel bk-bg-white">



									<div class="panel-body">
										<div class="col-md-12">
											<div class="col-md-4">
												<button class="btn btn-primary" type="button"
													onclick="func1(list)">
													<i class="fa fa-chevron-circle-up"></i>收起
												</button>
												<button class="btn btn-primary" type="button"
													onclick="func2(list)">
													<i class="fa fa-chevron-circle-down"></i>展开
												</button>
											</div>
											<div
												class="btn-group bk-margin-bottom-8 bk-margin-top-8 pull-right">
												<h4>收藏夹</h4>
											</div>
										</div>
										<br />
										<div class="col-md-12" id="list">
											<br />
											<form name="form1" method="post" action="">
												<ul class="messages-list">


													<li class="unread" id="ln"><a 
														href="javascript:test(1)">
															<div class="header">
																<span class="checkbox-custom"> <input
																	id="mailInbox1" type="checkbox"> <label
																	for="mailInbox1"></label>
																</span> <span class="from">Jhon Smith</span> <span class="date">
																	<i class="fa fa-paperclip"></i> Today, 08:45 AM
																</span>
															</div>
															<div class="title">
																<span class="action"> <i class="fa fa-star"></i>
																</span> Contrary to popular belief, Lorem Ipsum is not simply
																random text.
															</div>
															<div class="description">Lorem ipsum dolor sit
																amet, consectetur adipisicing elit, sed do eiusmod
																tempor incididunt ut labore et dolore magna aliqua......</div>
													</a></li>
													<li id="2"><a id="2"
														href="javascript:test(this.id)"
														>
															<div class="header">
																<span class="checkbox-custom"> <input
																	id="mailInbox2" type="checkbox"> <label
																	for="mailInbox"></label>
																</span> <span class="from">Jhon Smith</span> <span class="date">
																	<span class="fa fa-paper-clip"></span> Today, 07:53 AM
																</span>
															</div>
															<div class="title">
																<span class="action"> <i class="fa fa-star"></i>
																</span> Contrary to popular belief, Lorem Ipsum is not simply
																random text.
															</div>
															<div class="description">Lorem ipsum dolor sit
																amet, consectetur adipisicing elit, sed do eiusmod
																tempor incididunt ut labore et dolore magna aliqua......</div>
													</a></li>

												</ul>
											</form>
										</div>
									</div>
								</div>

								<div class="panel bk-bg-white">



									<div class="panel-body">
										<div class="col-md-12">
											<div class="col-md-4">
												<button class="btn btn-primary" type="button"
													onclick="func1(list2)">
													<i class="fa fa-chevron-circle-up"></i>收起
												</button>
												<button class="btn btn-primary" type="button"
													onclick="func2(list2)">
													<i class="fa fa-chevron-circle-down"></i>展开
												</button>
											</div>
											<div
												class="btn-group bk-margin-bottom-8 bk-margin-top-8 pull-right">
												<h4>汇总区</h4>
											</div>
										</div>
										<br />
										<div class="col-md-12" id="list2">
											<br />
											<ul class="messages-list">


												<li class="unread"><a href="page-inbox-message.html">
														<div class="header">
															<span class="checkbox-custom"> <input
																id="mailInbox1" type="checkbox"> <label
																for="mailInbox"></label>
															</span> <span class="from">Jhon Smith</span> <span class="date">
																<i class="fa fa-paperclip"></i> Today, 08:45 AM
															</span>
														</div>
														<div class="title">
															<span class="action"> <i class="fa fa-star"></i>
															</span> Contrary to popular belief, Lorem Ipsum is not simply
															random text.
														</div>
														<div class="description">Lorem ipsum dolor sit amet,
															consectetur adipisicing elit, sed do eiusmod tempor
															incididunt ut labore et dolore magna aliqua......</div>
												</a></li>
												<li><a href="page-inbox-message.html">
														<div class="header">
															<span class="checkbox-custom"> <input
																id="mailInbox2" type="checkbox"> <label
																for="mailInbox"></label>
															</span> <span class="from">Jhon Smith</span> <span class="date">
																<span class="fa fa-paper-clip"></span> Today, 07:53 AM
															</span>
														</div>
														<div class="title">
															<span class="action"> <i class="fa fa-star"></i>
															</span> Contrary to popular belief, Lorem Ipsum is not simply
															random text.
														</div>
														<div class="description">Lorem ipsum dolor sit amet,
															consectetur adipisicing elit, sed do eiusmod tempor
															incididunt ut labore et dolore magna aliqua......</div>
												</a></li>

											</ul>
										</div>
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