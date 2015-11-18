<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>My JSP 'json.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="assets/js/jquery-1.7.1.js"></script>
<script type="text/javascript">
	$(function() {
		$("#tj").click(function() {
			//提交的参数，name和inch是和struts action中对应的接收变量
			var params = {
				name : $("#xm").val(),
				inch : $("#sg").val()
			};
			$.ajax({
				type : "POST",
				url : "jsonAjax",
				data : params,
				dataType : 'json', //ajax返回值设置为text（json格式也可用它返回，可打印出结果，也可设置成json）
				success : function(data) {
					console.log(data);//可在前台观看返回结果
					//var obj = $.parseJSON(data); //当使用dataType : 'text'时，使用这个方法解析json
					var state_value = data.result; //result是和action中定义的result变量的get方法对应的
					alert(state_value);
				},
				error : function(json) {
					alert("json=" + json);
					return false;
				}
			});
		});
	});
</script>
</head>
<body>
	<span>姓名：</span>
	<input id="xm" type="text">
	<br />
	<span>身高：</span>
	<input id="sg" type="text">
	<br />
	<input type="button" value="提交" id="tj">
</body>
</html>