<html>
<head>

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
<style>
@import url(https://fonts.googleapis.com/css?family=Montserrat);

html, body {
	height: 100%;
	font-weight: 800;
}

body {
	background: #030321;
	font-family: Arial;
}

svg {
	display: block;
	font: 10.5em 'Montserrat';
	width: 960px;
	height: 300px;
	margin: 0 auto;
}

.text-copy {
	fill: none;
	stroke: white;
	stroke-dasharray: 6% 29%;
	stroke-width: 5px;
	stroke-dashoffset: 0%;
	animation: stroke-offset 5.5s infinite linear;
}

.text-copy:nth-child(1) {
	stroke: #4D163D;
	animation-delay: -1;
}

.text-copy:nth-child(2) {
	stroke: #840037;
	animation-delay: -2s;
}

.text-copy:nth-child(3) {
	stroke: #BD0034;
	animation-delay: -3s;
}

.text-copy:nth-child(4) {
	stroke: #BD0034;
	animation-delay: -4s;
}

.text-copy:nth-child(5) {
	stroke: #FDB731;
	animation-delay: -5s;
}

@
keyframes stroke-offset { 100% {
	stroke-dashoffset: -35%;
}
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<svg viewBox="0 0 960 300">
    <symbol id="s-text">
		<text text-anchor="middle" x="50%" y="80%">KRISHNA </text>
	</symbol>

	<g class="g-ants">
		<use xlink:href="#s-text" class="text-copy"></use>
		<use xlink:href="#s-text" class="text-copy"></use>
		<use xlink:href="#s-text" class="text-copy"></use>
		<use xlink:href="#s-text" class="text-copy"></use>
		<use xlink:href="#s-text" class="text-copy"></use>
	</g>
</svg>
		</div>

		<div class="row">
			<address>author by: Ganesh Gujjeti</address>
		</div>
	</div>

</body>
</html>
