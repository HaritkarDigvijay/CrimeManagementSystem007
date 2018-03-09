<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>NavBar</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
body {
	padding-top: 70px;
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">WebSiteName</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="welcomepage.jsp">Home</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">News<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="http://zeenews.india.com/uttar-pradesh"
								target="_blank">Regional</a></li>
							<li><a href="http://www.thehindu.com/news/national/"
								target="_blank">National</a></li>
							<li><a href="http://www.thehindu.com/news/international/"
								target="_blank">International</a></li>
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
							<li><a href="logincivilian.jsp">Register FIR</a></li>
							<li><a href="logincivilian.jsp">Women HelpLine</a></li>
							<li><a
								href="http://164.100.181.28/edistrict/onlinecertverf.aspx"
								target="_blank">Document Verification</a></li>
							<li><a href="#">Know Your Police Station</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Contact Us<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">HelpLine Numbers</a></li>
							<li><a href="#">Feedback</a></li>
							<li><a href="map.jsp">Map</a></li>
							<li><a href="map.jsp">About Us</a></li>
						</ul></li>
				</ul>

				<!-- 				Login -->
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><span
							class="glyphicon glyphicon-log-in"></span> Log In<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="logincivilian.jsp">Civilian</a></li>
							<li><a href="loginofficer.jsp">Officer</a></li>
						</ul></li>
				</ul>

				<!-- Sign Up -->
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><span
							class="glyphicon glyphicon-user"></span> Sign Up<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="RegistrationCivilian.jsp">Civilian</a></li>
							<li><a href="RegistrationOfficer.jsp">Officer</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>