<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%@include file="navbar.jsp"%>
<title>Registration Civilian</title>
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
				<h2 id="legend">Registration Form</h2>
				<form id="form" action="ApplicantController?action=RegisterOfficer" method="post" id="fileForm" role="form">
					<fieldset>
						<div class="form-group">
							<label for="policestation"><span class="req">* </span>
								Police Station: </label> <input required type="text"
								name="Police Station Name" id="phone" class="form-control name"
								maxlength="28" onkeyup="validatephone(this);"
								placeholder="Name Of Police Station" />
						</div>

						<div class="form-group">
							<label for="Area"><span class="req">* </span> Area: </label> <input
								class="form-control" type="text"
								placeholder="Area Of your Station" name="Area" id="txt"
								onkeyup="Validate(this)" required />
							<div id="errFirst"></div>
						</div>

						<div class="form-group">
							<label for="Officer Name"><span class="req">* </span>
								Officer Name:</label> <input class="form-control" type="text"
								placeholder="Officer Name" name="name" id="txt"
								onkeyup="Validate(this)" placeholder="Officer Name"
								required />
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
							<label for="password"><span class="req">* </span>
								Password: </label> <input required name="password" type="password"
								class="form-control inputpass"
								placeholder="Use Special Character Also" minlength="4"
								maxlength="16" id="pass1" />
							</p>

							<label for="password"><span class="req">* </span>
								Password Confirm: </label> <input required name="rePassword"
								type="password" class="form-control inputpass" minlength="4"
								maxlength="16" placeholder="Enter again to validate" id="pass2"
								onkeyup="checkPass(); return false;" /> <span
								id="confirmMessage" class="confirmMessage"></span>
						</div>

						<div class="form-group">
							<input type="checkbox" required name="terms"
								onchange="this.setCustomValidity(validity.valueMissing ? 'Please indicate that you accept the Terms and Conditions' : '');"
								id="field_terms">   <label for="terms">I agree
								with the <a href="terms.php"
								title="You may read our terms and conditions by clicking on this link">terms
									and conditions</a> for Registration.
							</label><span class="req">* </span>
						</div>

						<div class="form-group">
							<input class="btn btn-success" type="submit" name="submit_reg"
								value="Register">
						</div>
						<h5>You will receive an email to complete the registration
							and validation process.</h5>
						<h5>Be sure to check your spam folders.</h5>


					</fieldset>
				</form>
				<!-- ends register form -->

				<script type="text/javascript">
					document
							.getElementById("field_terms")
							.setCustomValidity(
									"Please indicate that you accept the Terms and Conditions");
				</script>
			</div>
		</div>
	</div>
	<br>
	<br>
</body>
</html>