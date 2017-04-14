<link href="resources/css/navbar.css" rel="stylesheet" type="text/css">
<script src="resources/js/navbar.js" type="text/javascript"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<div class="container-fluid">
	<nav class="navbar navbar-inverse">
		<div class="navbar-header">
			<button class="navbar-toggle" type="button" data-toggle="collapse"
				data-target=".js-navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

		</div>
		<a href="#" <i class="fa fa-shopping-bag"/>
			<font color="red">Shopping cart</font>></a>

		<div class="collapse navbar-collapse js-navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="dropdown mega-dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown">Men <span
						class="caret"></span></a>
					<ul class="dropdown-menu mega-dropdown-menu">
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Men Collection</li>
								<div id="menCollection" class="carousel slide"
									data-ride="carousel">
									<div class="carousel-inner">
										<div class="item active">
											<a href="#"><img
												src="http://placehold.it/254x150/ff3546/f5f5f5/&text=New+Collection"
												class="img-responsive" alt="product 1"></a>
											<h4>
												<small>Summer dress floral prints</small>
											</h4>
											<button class="btn btn-primary" type="button">49,99
												€</button>
											<button href="#" class="btn btn-default" type="button">
												<span class="glyphicon glyphicon-heart"></span> Add to
												Wishlist
											</button>
										</div>

										<div class="item">
											<a href="#"><img
												src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection"
												class="img-responsive" alt="product 2"></a>
											<h4>
												<small>Gold sandals with shiny touch</small>
											</h4>
											<button class="btn btn-primary" type="button">9,99
												€</button>
											<button href="#" class="btn btn-default" type="button">
												<span class="glyphicon glyphicon-heart"></span> Add to
												Wishlist
											</button>
										</div>
										<!-- End Item -->
										<div class="item">
											<a href="#"><img
												src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection"
												class="img-responsive" alt="product 3"></a>
											<h4>
												<small>Denin jacket stamped</small>
											</h4>
											<button class="btn btn-primary" type="button">49,99
												€</button>
											<button href="#" class="btn btn-default" type="button">
												<span class="glyphicon glyphicon-heart"></span> Add to
												Wishlist
											</button>
										</div>
										<!-- End Item -->
									</div>
									<!-- End Carousel Inner -->
									<!-- Controls -->
									<a class="left carousel-control" href="#menCollection"
										role="button" data-slide="prev"> <span
										class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a> <a class="right carousel-control" href="#menCollection"
										role="button" data-slide="next"> <span
										class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
								<!-- /.carousel -->
								<li class="divider"></li>
								<li><a href="#">View all Collection <span
										class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header"></li>
								<li><a href="#">Formal shirts</a></li>
								<li><a href="#">Formal trousers</a></li>

								<li class="dropdown mega-dropdown"><a href="#"
									class="dropdown-toggle" data-toggle="dropdown">Women <span
										class="caret"></span></a>
									<ul class="dropdown-menu mega-dropdown-menu">
										<li class="col-sm-3"></li>
									</ul>
									<ul>
										<li class="dropdown-header">Women Collection</li>
										<li class="col-sm-3"></li>
									</ul>

									<ul>
										<li class="dropdown-header"></li>
										<li><a href="#">kurtis</a></li>
										<li><a href="#">lehngas</a></li>
										<li><a href="#">dresses & jumpsuits</a></li>
									</ul>
								<li class="dropdown mega-dropdown"><a href="#"
									class="dropdown-toggle" data-toggle="dropdown">kids <span
										class="caret"></span></a>
									<ul class="dropdown-menu mega-dropdown-menu">
										<li class="col-sm-3"></li>
									</ul>
									<ul>
										<li class="dropdown-header">kids Collection</li>
										<li class="col-sm-3"></li>
									</ul>
									<ul>
										<li class="dropdown-header"></li>
										<li><a href="#">shorts</a></li>
										<li><a href="#">skirts</a></li>
										<li><a href="#">dresses </a></li>
									</ul>

									<ul class="nav navbar-nav navbar-right">
										<li class="dropdown"><a href="#" class="dropdown-toggle"
											data-toggle="dropdown" role="button" aria-expanded="false">My
												account <span class="caret"></span>
										</a>
											<ul class="dropdown-menu" role="menu">
												<security:authorize access="isAnonymous()">
													<li><a href="login">Login <i class="fa fa-sign-in"></i>
													</a></li>
													<li><a href="AddUser">Adduser <i
															class="fa fa-users"></i>
													</a></li>
												</security:authorize>
												<security:authorize access="isAuthenticated()">
													<security:authorize access="hasRole('ROLE_USER')">
														<li><a href="cart">cart <i
																class="fa fa-shopping-bag"></i>
														</a></li>

													</security:authorize>

													<security:authorize access="hasAuthority('ROLE_ADMIN')">
														<li><a href="adminHome">AdminHome <i
																class="fa fa-database"></i>
														</a></li>
													</security:authorize>

													<li><a href="logout">Logout <i
															class="fa fa-sign-out"></i>
													</a></li>
												</security:authorize>


											</ul></li>
									</ul>
		</div>
		<!-- /.nav-collapse -->
	</nav>
</div>

