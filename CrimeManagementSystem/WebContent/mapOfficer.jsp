<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="officerlogin.jsp" %>
<script src="https://maps.googleapis.com/maps/api/js?callback=myMap"></script>
</head>
<body>

	<div class="container">

		<h3>My First Google Map</h3>

		<div id="googleMap" style="width: 100%; height: 400px;"></div>

		<script>
			function myMap() {
				var mapProp = {
					center : new google.maps.LatLng(26.8467, 80.9462),
					zoom : 7,
				};
				var map = new google.maps.Map(document
						.getElementById("googleMap"), mapProp);
			}
		</script>

		<script
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDB9tbU6EcJ1By5Ho6JvsPgU5nv51oyf7s&callback=myMap"></script>
	</div>

</body>
</html>