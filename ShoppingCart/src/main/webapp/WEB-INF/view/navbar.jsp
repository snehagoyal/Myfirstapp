<!doctype html>
<html>
<head>
<!-- http://fortawesome.github.io/Font-Awesome/get-started/ -->
<meta charset="utf-8">
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css" rel="stylesheet">
<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<title>Navbar with dropdowns</title>
</head>
<body>
            <nav class="navbar">
              <div class="navbar-inner">
                  <ul class="nav">
                    <li class="active">
                      <a href="#"><i class="icon-home icon-large"></i> Home </a>                 
                    </li>
                    <li class="dropdown">
                      <a href="#" id="drop1" class="dropdown-toggle" data-toggle="dropdown">Dropdown 1 <b class="caret"></b></a>
                      <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                      </ul>
                    </li>
                  </ul>
                  <ul class="nav">
                    <li class="dropdown">
                      <a href="#" id="drop2" class="dropdown-toggle" data-toggle="dropdown">Dropdown 2 <b class="caret"></b></a>
                      <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                      </ul>
                    </li>
                  </ul>
              </div><!-- navbar inner -->
            </nav>
			
			<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
			

</body>
</html>