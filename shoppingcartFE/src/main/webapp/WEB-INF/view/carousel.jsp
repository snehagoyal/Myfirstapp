<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Carousel</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="resources/css/carousel.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

  <script src="https://code.jquery.com/jquery.js"></script>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

</head>
<body>
<!-- CAROUSEL -->

<div class="container-fluid">
	<!-- Indicators -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="resources/images/img7.jpg" alt="" width="1300"
					height="200" class="img-responsive">
				<div class="carousel-caption">
					<p>
						I could give up Shopping, but I'm not a Quitter.</p>
				</div>
			</div>
			<div class="item">
				<img src="resources/images/img19.jpg" alt="" width="1300"
					height="500" class="img-responsive">
				<div class="carousel-caption">
					<p>
						Shopping is the best medicine.</p>
				</div>
			</div>
			<div class="item">
				<img src="resources/images/img5.jpg" alt="" width="1300"
					height="500" class="img-responsive">
				<div class="carousel-caption">
					<p>Crying is for plain women. Pretty women go shopping.
					</p>
				</div>
			</div>
		</div>
		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="fa fa-angle-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span class="fa fa-angle-right"
			aria-hidden="true"></span> <span class="sr-only">Next</span>
		</a>
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
	</div>
</div>

<!-- END CAROUSEL -->
<br>
<br>
<br>
<!-- DIVIDED COLUMNS -->
<div class="container-fluid">
	<div class="row grid-divider">
	<!--  	<a href="${pageContext.request.contextPath}/allProducts/BMW">-->
			<div class="col-sm-4">
				<div class="col-padding">
				<p>
					Life's Short ,Go Shopping
					</p>
				
					<div>
						<img src="resources/images/img17.jpg" width="400"
							height="100"  class="img-responsive">
					</div>
					</div>
			</div>
	
			<div class="col-sm-4">
				<div class="col-padding">
					<p>
						Don't stop me Now.
					</p>
					<div>
						<img src="resources/images/img15.jpg" width="400"
							height="200" class="img-responsive">
					</div>
				</div>
			</div>
					<div class="col-sm-4">
				<div class="col-padding">
					<p>
						Those who hate SHOPPING, don't know how to Shop.
					</p>
					<div>
						<img src="resources/images/img4.jpg" width="400"
							height="250" class="img-responsive">
					</div>
				</div>
			</div>
		
	</div>
</div>


</body>
</html>
