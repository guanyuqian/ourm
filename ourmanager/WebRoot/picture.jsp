<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'picture.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
			<script src="assets/js/jquery-1.7.1.js"></script>
 <script>
/*   	
  $(document).ready(function () {
        $('.rs-slider').refineSlide();
    });
 */

</script> 
<script>
function ClickME()
{

  $("#1").fadeOut(3000);
  setTimeout(function(){
   window.location.href="model.jsp";
},3000);

}
</script> 
  </head>
  
  <body>
<div id="pic"><img src="assets/images/1.jpg" id="1"  onclick="ClickME()" alt="image1"/>
</div>
  </body>
</html>
