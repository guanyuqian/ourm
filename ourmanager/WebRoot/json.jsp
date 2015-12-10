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

</head>
<body>
    <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="100%" height="300" id="FlashZhuan" >  
                <param name="movie" value="assets/flash/flash3030.swf">  
                <param name="FlashVars" value="prizeResult=3">  
                <param name="quality" value="high">  
                <param name="menu" value="false">  
                <param name="wmode" value="transparent">  
                <param name="allowScriptAccess" value="always" />              
                <embed src="assets/flash/flash3030.swf" FlashVars="prizeResult=3" allowScriptAccess="always" wmode="transparent" menu="false" quality="high" width="100%" height="100%" type="application/x-shockwave-flash" pluginspage="http://get.adobe.com/cn/flashplayer/" name="FlashZhuan"/>  
        </object>  
	<s:form action="json1" method="post">
		Userid
		<input id="xm" type="text" name="LookUserid">
		<button id="save" 
			type="submit">保存</button>
	</s:form>
</body>
</html>