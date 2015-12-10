<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'MyJsp.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<!-- Import google fonts -->
<link
	href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light"
	rel="stylesheet" type="text/css" />

<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="assets/ico/favicon.ico"
	type="image/x-icon" />

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
<link href="assets/plugins/summernote/css/summernote.css"
	rel="stylesheet" />
<link href="assets/plugins/summernote/css/summernote-bs3.css"
	rel="stylesheet" />
<link
	href="assets/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css"
	rel="stylesheet" />

<!-- Theme CSS -->
<link href="assets/css/jquery.mmenu.css" rel="stylesheet" />

<!-- Page CSS -->
<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/add-ons.min.css" rel="stylesheet" />

<!-- end: CSS file-->


<!-- Head Libs -->
<script src="assets/plugins/modernizr/js/modernizr.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		for (var i = 1; i <= 5; i++) {
			$("#nav-parent" + i).bind("click", {
				'clickID' : "#nav-parent" + i
			}, function(e) {
				var str = $(e.data.clickID).attr("class");
				if (str.indexOf("nav-expanded") >= 0)//已经展开了
				{
					$(" .nav-children").hide(300);//动画隐藏
					$(".nav-parent").removeClass("nav-expanded");//全部隐藏
				} else {
					$(" .nav-children").hide(300);//动画隐藏
					$(e.data.clickID + " .nav-children").show(300);//动画展开
					$(".nav-parent").removeClass("nav-expanded");//全部隐藏
					$(e.data.clickID).toggleClass("nav-expanded");//当前展开
				}
			});
		}
	});
</script>
</head>
<body>

	<div class="sidebar mm-menu mm-horizontal mm-offcanvas">
		<div class="sidebar-collapse mm-panel mm-opened mm-current" id="mm-0">
			<!-- Sidebar Header Logo-->
			<div class="sidebar-header drop-shadow">
				<img alt="" class="img-responsive" src="assets/img/logo.png">
			</div>
			<!-- Sidebar Menu-->
			<div class="sidebar-menu" style="height: 100%;">
				<nav role="navigation" class="nav-main opened" id="menu">
				<ul class="nav nav-sidebar">
					<div class="panel-body text-center">
						<div class="bk-avatar">
							<img alt="" class="img-circle bk-img-60"
								src="assets/img/avatar.jpg">
						</div>
						<div class="bk-padding-top-10">
							<i class="fa fa-circle text-success"></i> <small>Administrator</small>
						</div>
					</div>
					<div class="divider2"></div>
					<li><a href="index.html"> <i aria-hidden="true"
							class="fa fa-laptop"></i><span>Dashboard</span>
					</a></li>
					<li><a href="page-inbox.html"> <span
							class="pull-right label label-primary">165</span> <i
							aria-hidden="true" class="fa fa-envelope"></i><span>Mail</span>
					</a></li>
					<li class="nav-parent" id="nav-parent1"><a> <i
							aria-hidden="true" class="fa fa-copy"></i><span>hehetton>
						</span>



					</a>
						<ul class="nav nav-children">
							<li><a href="page-activity.html"><span class="text">
										Activity</span></a></li>
							<li><a href="page-invoice.html"><span class="text">
										Invoice</span></a></li>
							<li><a href="page-profile.html"><span class="text">
										Profile</span></a></li>
							<li><a href="page-pricing-tables.html"><span
									class="text"> Pricing Tables</span></a></li>
							<li><a href="page-404.html"><span class="text">
										404</span></a></li>
							<li><a href="page-500.html"><span class="text">
										500</span></a></li>
							<li><a href="page-lockscreen.html"><span class="text">
										LockScreen1</span></a></li>
							<li><a href="page-lockscreen2.html"><span class="text">
										LockScreen2</span></a></li>
							<li><a href="page-login.html"><span class="text">
										Login Page</span></a></li>
							<li><a href="page-register.html"><span class="text">
										Register Page</span></a></li>
						</ul></li>
					<li class="nav-parent  " id="nav-parent2"><a> <i
							aria-hidden="true" class="fa fa-list-alt"></i><span>page </span>
					</a>
						<ul class="nav nav-children" style="">
							<li><a href="form-elements.html"><span class="text">
										Form elements</span></a></li>
							<li><a href="form-wizard.html"><span class="text">
										Wizard</span></a></li>
							<li><a href="form-dropzone.html"><span class="text">
										Dropzone Upload</span></a></li>
							<li><a href="form-x-editable.html"><span class="text">
										X-editable</span></a></li>
							<li class="active opened"><a href="form-editors.html"><span
									class="text"> Editors</span></a></li>
						</ul></li>
					<li><a href="table.html"> <i aria-hidden="true"
							class="fa fa-table"></i><span>Tables</span>
					</a></li>
					<li class="nav-parent" id="nav-parent3"><a> <i
							aria-hidden="true" class="fa fa-random"></i><span>Visual
								Chart</span>
					</a>
						<ul class="nav nav-children">
							<li><a href="chart-flot.html"><span class="text">
										Flot Chart</span></a></li>
							<li><a href="chart-xchart.html"><span class="text">
										xChart</span></a></li>
							<li><a href="chart-other.html"><span class="text">
										Other</span></a></li>
						</ul></li>
					<li class="nav-parent" id="nav-parent4"><a> <i
							aria-hidden="true" class="fa fa-tasks"></i> <span>UI
								Elements</span>
					</a>
						<ul class="nav nav-children">
							<li><a href="ui-progress-bars.html"><span class="text">
										Progress bars</span></a></li>
							<li><a href="ui-nestable-list.html"><span class="text">
										Nestable Lists</span></a></li>
							<li><a href="ui-elements.html"><span class="text">
										Elements</span></a></li>
							<li><a href="ui-panels.html"><span class="text">
										Panels</span></a></li>
							<li><a href="ui-buttons.html"><span class="text">
										Buttons</span></a></li>
						</ul></li>
					<li><a href="widgets.html"> <i aria-hidden="true"
							class="fa fa-life-bouy"></i><span>Widgets</span>
					</a></li>
					<li><a href="typography.html"> <i aria-hidden="true"
							class="fa fa-font"></i><span>Typography</span>
					</a></li>
					<li class="nav-parent" id="nav-parent5"><a> <i
							aria-hidden="true" class="fa fa-bolt"></i><span>Icons</span>
					</a>
						<ul class="nav nav-children">
							<li><a href="icons-font-awesome.html"><span class="text">
										Font Awesome</span></a></li>
							<li><a href="icons-weathericons.html"><span class="text">
										Weather Icons</span></a></li>
							<li><a href="icons-glyphicons.html"><span class="text">
										Glyphicons</span></a></li>
						</ul></li>
					<li><a href="gallery.html"> <i aria-hidden="true"
							class="fa fa-picture-o"></i><span>Gallery</span>
					</a></li>
					<li><a href="calendar.html"> <i aria-hidden="true"
							class="fa fa-calendar"></i><span>Calendar</span>
					</a></li>
				</ul>
				</nav>
			</div>
			<!-- End Sidebar Menu-->
		</div>
		<!-- Sidebar Footer-->

		<!-- End Sidebar Footer-->
	</div>
	<div class="mm-page">
		<div class="navbar" role="navigation">
			<div class="container-fluid container-nav">
				<!-- Navbar Action -->
				<ul class="nav navbar-nav navbar-actions navbar-left">
					<li class="visible-md visible-lg"><a id="main-menu-toggle"
						href="form-editors.html#"><i class="fa fa-th-large"></i></a></li>
					<li class="visible-xs visible-sm"><a id="sidebar-menu"
						href="form-editors.html#"><i class="fa fa-navicon"></i></a></li>
				</ul>
				<!-- Navbar Left -->
				<div class="navbar-left">
					<!-- Search Form -->
					<form class="search navbar-form">
						<div class="input-group input-search">
							<input type="text" placeholder="Search..." id="q" name="q"
								class="form-control"> <span class="input-group-btn">
								<button type="submit" class="btn btn-default">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</div>
					</form>
				</div>
				<!-- Navbar Right -->
				<div class="navbar-right">
					<!-- Notifications -->
					<ul class="notifications hidden-sm hidden-xs">
						<li><a data-toggle="dropdown"
							class="dropdown-toggle notification-icon" href="#"> <i
								class="fa fa-tasks"></i> <span class="badge">10</span>
						</a>
							<ul role="menu" class="dropdown-menu update-menu">
								<li><a href="#"><i class="fa fa-database bk-fg-primary"></i>
										Database </a></li>
								<li><a href="#"><i
										class="fa fa-bar-chart-o bk-fg-primary"></i> Connection </a></li>
								<li><a href="#"><i class="fa fa-bell bk-fg-primary"></i>
										Notification </a></li>
								<li><a href="#"><i class="fa fa-envelope bk-fg-primary"></i>
										Message </a></li>
								<li><a href="#"><i class="fa fa-flash bk-fg-primary"></i>
										Traffic </a></li>
								<li><a href="#"><i
										class="fa fa-credit-card bk-fg-primary"></i> Invoices </a></li>
								<li><a href="#"><i class="fa fa-dollar bk-fg-primary"></i>
										Finances </a></li>
								<li><a href="#"><i
										class="fa fa-thumbs-o-up bk-fg-primary"></i> Orders </a></li>
								<li><a href="#"><i class="fa fa-folder bk-fg-primary"></i>
										Directories </a></li>
								<li><a href="#"><i class="fa fa-users bk-fg-primary"></i>
										Users </a></li>
							</ul></li>
						<li><a data-toggle="dropdown"
							class="dropdown-toggle notification-icon" href="#"> <i
								class="fa fa-envelope"></i> <span class="badge">5</span>
						</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-header"><strong>Messages</strong>
									<div class="progress progress-xs  progress-striped active">
										<div style="width: 60%;" aria-valuemax="100" aria-valuemin="0"
											aria-valuenow="60" role="progressbar"
											class="progress-bar progress-bar-success">60%</div>
									</div></li>
								<li class="avatar"><a href="page-inbox.html"> <img
										alt="" src="assets/img/avatar1.jpg" class="avatar">
										<div>
											<div class="point point-primary point-lg"></div>
											New message
										</div> <span><small>1 minute ago</small></span>
								</a></li>
								<li class="avatar"><a href="page-inbox.html"> <img
										alt="" src="assets/img/avatar2.jpg" class="avatar">
										<div>
											<div class="point point-primary point-lg"></div>
											New message
										</div> <span><small>3 minute ago</small></span>
								</a></li>
								<li class="avatar"><a href="page-inbox.html"> <img
										alt="" src="assets/img/avatar3.jpg" class="avatar">
										<div>
											<div class="point point-primary point-lg"></div>
											New message
										</div> <span><small>4 minute ago</small></span>
								</a></li>
								<li class="avatar"><a href="page-inbox.html"> <img
										alt="" src="assets/img/avatar4.jpg" class="avatar">
										<div>
											<div class="point point-primary point-lg"></div>
											New message
										</div> <span><small>30 minute ago</small></span>
								</a></li>
								<li class="avatar"><a href="page-inbox.html"> <img
										alt="" src="assets/img/avatar5.jpg" class="avatar">
										<div>
											<div class="point point-primary point-lg"></div>
											New message
										</div> <span><small>1 hours ago</small></span>
								</a></li>
								<li class="dropdown-menu-footer text-center"><a
									href="page-inbox.html">View all messages</a></li>
							</ul></li>
						<li><a data-toggle="dropdown"
							class="dropdown-toggle notification-icon" href="#"> <i
								class="fa fa-bell"></i> <span class="badge">3</span>
						</a>
							<ul class="dropdown-menu list-group">
								<li class="dropdown-menu-header"><strong>Notifications</strong>
									<div class="progress progress-xs  progress-striped active">
										<div style="width: 60%;" aria-valuemax="100" aria-valuemin="0"
											aria-valuenow="60" role="progressbar"
											class="progress-bar progress-bar-danger">60%</div>
									</div></li>
								<li class="list-item"><a href="page-inbox.html">
										<div class="pull-left">
											<i class="fa fa-envelope-o bk-fg-primary"></i>
										</div>
										<div class="media-body clearfix">
											<div>Unread Message</div>
											<h6>You have 10 unread message</h6>
										</div>
								</a></li>
								<li class="list-item"><a href="#">
										<div class="pull-left">
											<i class="fa fa-cogs bk-fg-primary"></i>
										</div>
										<div class="media-body clearfix">
											<div>New Settings</div>
											<h6>There are new settings available</h6>
										</div>
								</a></li>
								<li class="list-item"><a href="#">
										<div class="pull-left">
											<i class="fa fa-fire bk-fg-primary"></i>
										</div>
										<div class="media-body clearfix">
											<div>Update</div>
											<h6>There are new updates available</h6>
										</div>
								</a></li>
								<li class="list-item-last"><a href="#">
										<h6>Unread notifications</h6> <span class="badge">15</span>
								</a></li>
							</ul></li>
					</ul>
					<!-- End Notifications -->
					<!-- Userbox -->
					<div class="userbox">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							<div class="profile-info">
								<span class="name">John Smith Doe</span> <span class="role">Developer</span>
							</div> <i class="fa custom-caret"></i>
						</a>
						<div class="dropdown-menu">
							<ul class="list-unstyled">
								<li class="dropdown-menu-header bk-bg-white bk-margin-top-15">
									<div class="progress progress-xs  progress-striped active">
										<div style="width: 60%;" aria-valuemax="100" aria-valuemin="0"
											aria-valuenow="60" role="progressbar"
											class="progress-bar progress-bar-primary">60%</div>
									</div>
								</li>
								<li><a href="page-profile.html"><i class="fa fa-user"></i>
										Profile</a></li>
								<li><a href="#"><i class="fa fa-wrench"></i> Settings</a></li>
								<li><a href="page-invoice"><i class="fa fa-usd"></i>
										Payments</a></li>
								<li><a href="#"><i class="fa fa-file"></i> File</a></li>
								<li><a href="page-login.html"><i
										class="fa fa-power-off"></i> Logout</a></li>
							</ul>
						</div>
					</div>
					<!-- End Userbox -->
				</div>
				<!-- End Navbar Right -->
			</div>
		</div>



		<!-- start: JavaScript-->
</body>
</html>
