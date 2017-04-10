<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>carousel</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link href="resources/css/carousel.css" rel="stylesheet" type="text/css">
<script src="resources/js/carousel.js" type="text/javascript"></script>

</head>
<body>
<!--
Responsive Email Template by meartlab
A component of source: codepen.io - zoom effect:elevateZoom  
Licensed under MIT
-->

<div class="container">
<div id='carousel-custom' class='carousel slide' data-ride='carousel'>
    <div class='carousel-outer'>
        <!-- me art lab slider -->
        <div class='carousel-inner '>
            <div class='item active'>
                <img src='resources/images/img7.jpg' alt='' id="zoom_05"  data-zoom-image="resources/images/img7.jpg"/>
            </div>
            <div class='item'  id="zoom_05">
                <img src='http://images.asos-media.com/inv/media/8/2/3/3/5313328/image2xxl.jpg' alt='' data-zoom-image="http://images.asos-media.com/inv/media/8/2/3/3/5313328/image2xxl.jpg" />
            </div>
            <div class='item'>
                <img src='resources/images/img3.jpg' alt='' data-zoom-image="resources/images/img3.jpg" />
            </div>
                
            <div class='item'>
                <img src='http://images.asos-media.com/inv/media/3/6/7/0/4850763/multi/image1xxl.jpg' alt='' data-zoom-image="http://images.asos-media.com/inv/media/3/6/7/0/4850763/multi/image1xxl.jpg" id="zoom_05"/>
            </div>
            <div class='item'>
                <img src='http://images.asos-media.com/inv/media/5/2/1/3/4603125/gold/image1xxl.jpg' alt='' data-zoom-image="http://images.asos-media.com/inv/media/5/2/1/3/4603125/gold/image1xxl.jpg" id="zoom_05"/>
            </div>
            <div class='item'>
                <img src='resources/images/img8.jpg' alt='' data-zoom-image="resources/images/img8.jpg" id="zoom_05"/>
            </div>
            <div class='item'>
                <img src='resources/images/img4.jpg' alt='' data-zoom-image="resources/images/img4.jpg" id="zoom_05"/>
            </div>
            <script>
  $("#zoom_05").elevateZoom({ zoomType    : "inner", cursor: "crosshair" });
</script>
        </div>
            
        <!-- sag sol -->
        <a class='left carousel-control' href='#carousel-custom' data-slide='prev'>
            <span class='glyphicon glyphicon-chevron-left'></span>
        </a>
        <a class='right carousel-control' href='#carousel-custom' data-slide='next'>
            <span class='glyphicon glyphicon-chevron-right'></span>
        </a>
    </div>
    
    <!-- thumb -->
    <ol class='carousel-indicators mCustomScrollbar meartlab'>
        <li data-target='#carousel-custom' data-slide-to='0' class='active'><img src='resources/images/img7.jpg' alt='' /></li>
        <li data-target='#carousel-custom' data-slide-to='1'><img src='http://images.asos-media.com/inv/media/8/2/3/3/5313328/image2xxl.jpg' alt='' /></li>
        <li data-target='#carousel-custom' data-slide-to='2'><img src='resources/images/img3.jpg' alt='' /></li>
        <li data-target='#carousel-custom' data-slide-to='3'><img src='http://images.asos-media.com/inv/media/3/6/7/0/4850763/multi/image1xxl.jpg' alt='' /></li>
        <li data-target='#carousel-custom' data-slide-to='4'><img src='http://images.asos-media.com/inv/media/5/2/1/3/4603125/gold/image1xxl.jpg' alt='' /></li>
        <li data-target='#carousel-custom' data-slide-to='5'><img src='resources/images/img8.jpg' alt='' /></li>
        <li data-target='#carousel-custom' data-slide-to='6'><img src='resources/images/img4.jpg' alt='' /></li>

    </ol>
</div>

<script type="text/javascript">
$(document).ready(function() {
    $(".mCustomScrollbar").mCustomScrollbar({axis:"x"});
});
</script>
</div>


</body>
</html>