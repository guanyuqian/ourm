<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html class=" js csstransforms csstransforms3d csstransitions" lang="zh-cn">
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'show.jsp' starting page</title>
    <!-- 	新使用的滑块效果 -->
    <link href="assets/css/slicebox.css"
	rel="stylesheet" />
<link href="assets/css/custom.css" rel="stylesheet" />
<link href="assets/css/demo.css"
	rel="stylesheet" />
		<script src="assets/js/jquery-1.7.1.js"></script>
<script src="assets/js/modernizr.custom.46884.js"></script>
	<script src="assets/js/jquery.slicebox.js"></script>

	
	<!--   <link href="assets/assets/css/main.css"
	rel="stylesheet" />
		  <link href="assets/assets/css/refineslide-theme-dark.css"
	rel="stylesheet" />
<link href="assets/assets/css/reset.css" rel="stylesheet" />
<link href="assets/css/demo.css"
	rel="stylesheet" /> -->

	<!-- <script src="assets/assets/js/jquery.js"></script>
	<script src="assets/assert/js/modernizr.js"></script>
	<script src="assets/assert/js/respond.js"></script> -->
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<!-- <script>
  	
  $(document).ready(function () {
        $('.rs-slider').refineSlide();
    });


</script> -->
 <script>
      $(function() {

        var Page = (function() {

          var $navArrows = $( '#nav-arrows' ).hide(),
                  $navDots = $( '#nav-dots' ).hide(),
                  $nav = $navDots.children( 'span' ),
                  $shadow = $( '#shadow' ).hide(),
                  slicebox = $( '#sb-slider' ).slicebox( {
                    onReady : function() {

                      $navArrows.show();
                      $navDots.show();
                      $shadow.show();

                    },
                    onBeforeChange : function( pos ) {

                      $nav.removeClass( 'nav-dot-current' );
                      $nav.eq( pos ).addClass( 'nav-dot-current' );

                    }
                  } ),

                  init = function() {

                    initEvents();

                  },
                  initEvents = function() {

                    // add navigation events
                    $navArrows.children( ':first' ).on( 'click', function() {

                      slicebox.next();
                      return false;

                    } );

                    $navArrows.children( ':last' ).on( 'click', function() {

                      slicebox.previous();
                      return false;

                    } );

                    $nav.each( function( i ) {

                      $( this ).on( 'click', function( event ) {

                        var $dot = $( this );

                        if( !slicebox.isActive() ) {

                          $nav.removeClass( 'nav-dot-current' );
                          $dot.addClass( 'nav-dot-current' );

                        }

                        slicebox.jump( i + 1 );
                        return false;

                      } );

                    } );

                  };

          return { init : init };

        })();

        Page.init();

      });
    </script>

 </head>
  <body>

     <div class="container">
      <div class="wrapper">

          <ul id="sb-slider" class="sb-slider">
            <li>
              <a href="http://www.flickr.com/photos/strupler/2969141180" target="_blank"><img src="assets/images/1.jpg" alt="image1"/></a>
              <div class="sb-description">
                <h3>Creative Lifesaver</h3>
              </div>
            </li>
            <li>
              <a href="http://www.flickr.com/photos/strupler/2968268187" target="_blank"><img src="assets/images/2.jpg" alt="image2"/></a>
              <div class="sb-description">
                <h3>Honest Entertainer</h3>
              </div>
            </li>
            <li>
              <a href="http://www.flickr.com/photos/strupler/2968114825" target="_blank"><img src="assets/images/3.jpg" alt="image1"/></a>
              <div class="sb-description">
                <h3>Brave Astronaut</h3>
              </div>
            </li>
            <li>
              <a href="http://www.flickr.com/photos/strupler/2968122059" target="_blank"><img src="assets/images/4.jpg" alt="image1"/></a>
              <div class="sb-description">
                <h3>Affectionate Decision Maker</h3>
              </div>
            </li>
            <li>
              <a href="http://www.flickr.com/photos/strupler/2969119944" target="_blank"><img src="assets/images/5.jpg" alt="image1"/></a>
              <div class="sb-description">
                <h3>Faithful Investor</h3>
              </div>
            </li>
            <li>
              <a href="http://www.flickr.com/photos/strupler/2968126177" target="_blank"><img src="assets/images/6.jpg" alt="image1"/></a>
              <div class="sb-description">
                <h3>Groundbreaking Artist</h3>
              </div>
            </li>
            <li>
              <a href="http://www.flickr.com/photos/strupler/2968945158" target="_blank"><img src="assets/images/7.jpg" alt="image1"/></a>
              <div class="sb-description">
                <h3>Selfless Philantropist</h3>
              </div>
            </li>
          </ul>
        <div id="shadow" class="shadow"></div>

        <div id="nav-arrows" class="nav-arrows">
          <a href="#">Next</a>
          <a href="#">Previous</a>
        </div>

        <div id="nav-dots" class="nav-dots">
          <span class="nav-dot-current"></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
        </div>

      </div><!-- /Wrapper-->
    </div>
  </body>
</html>
