<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Officer Login Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<div class="navbar-brand" style="color: RED">${sessionScope.civilianName}</div>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="welcomepage.jsp">Home</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">News<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="http://zeenews.india.com/uttar-pradesh" target="_blank">Regional</a></li>
							<li><a href="http://www.thehindu.com/news/national/" target="_blank">National</a></li>
							<li><a href="http://www.thehindu.com/news/international/" target="_blank">International</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Gallery<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Photos</a></li>
							<li><a href="#">Videos</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Services<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="registerfir.jsp">Register FIR</a></li>
							<li><a href="#">FIR Status</a></li>
							<li><a href="#">Women HelpLine</a></li>
							<li><a href="#">Document Verification</a></li>
							<li><a href="#">Know Your Police Station</a></li>
						</ul></li>
						<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Contact Us<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">HelpLine Numbers</a></li>
							<li><a href="#">Feedback</a></li>
							<li><a href="mapCivilian.jsp">Map</a></li>
							<li><a href="map.jsp">About Us</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="welcomepage.jsp"><span class="glyphicon glyphicon-log-in"></span>
							Sign Out</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<h3>Civilian Login Page...!!!</h3>

</body>
</html>