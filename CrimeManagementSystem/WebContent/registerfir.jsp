<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%@include file="navbar.jsp"%>
<title>Register Fir</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
fieldset {
	border: thin solid #ccc;
	border-radius: 4px;
	padding: 20px;
	padding-left: 40px;
	background: #fbfbfb;
}

#legend {
	color: #678;
}

.form-control {
	width: 95%;
}

label small {
	color: #678 !important;
}

span.req {
	color: maroon;
	font-size: 112%;
}
</style>
<!------ Include the above in your HEAD tag ---------->
</head>
<body id="body">
	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<h2 id="legend">Register FIR</h2>
				<form id="form" action="" method="post" id="fileForm" role="form">
					<fieldset>
						<div class="form-group">
							<label for="phonenumber"><span class="req">* </span>
								Phone Number: </label> <input required type="text" name="phonenumber"
								id="phone" class="form-control phone" maxlength="28"
								onkeyup="validatephone(this);"
								placeholder="For contacting purpose." />
						</div>

						<div class="form-group">
							<label for="firstname"><span class="req">* </span> Name:
							</label> <input class="form-control" type="text"
								placeholder="Enter Your Name" name="name" id="txt"
								onkeyup="Validate(this)" required />
							<div id="errFirst"></div>
						</div>

						<div class="form-group">
							<label for="gender"><span class="req">* </span>Gender:</label>
							<div class="form-group">
								<select class="form-control" id="sel1">
									<option>Female</option>
									<option>Male</option>
								</select>
							</div>

						</div>

						<div class="form-group">
							<label for="lastname"><span class="req">* </span>Age: </label> <input
								class="form-control" type="text" placeholder="Enter Your Age"
								name="age" id="txt" onkeyup="Validate(this)" required />
							<div id="errLast"></div>
						</div>

						<div class="form-group">
							<label for="email"><span class="req">* </span> Email
								Address: </label> <input class="form-control" required
								placeholder="Enter Valid Email" type="text" name="email"
								id="email" onchange="email_validate(this.value);" />
							<div class="status" id="status"></div>
						</div>

						<div class="form-group">
							<label for="email"><span class="req">* </span> Date of
								Crime: </label> <input class="form-control" type="date" name="date">
						</div>

						<div class="form-group">
							<label for="Description"><span class="req">* </span>
								Description: </label>
							<textarea class="form-control" rows="4" cols="50"></textarea>
						</div>

						<div class="form-group">
							<label for="evidence"> Evidence: </label> <input required
								name="evidence" type="file" class="form-control inputpass" />
						</div>

						<br>
						<div class="form-group">
							<input class="btn btn-success" type="submit" name="submit_reg"
								value="Submit">
						</div>
					</fieldset>
				</form>
				<!-- ends register form -->
			</div>
		</div>
	</div>
	<br>
	<br>
</body>
</html>