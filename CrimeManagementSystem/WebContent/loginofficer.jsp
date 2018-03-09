<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Officer</title>

<%@include file="navbar.jsp" %>

<link href="logincivilian.css" rel="stylesheet">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Sign in to continue</h1>
            <div class="account-wall">
                <img class="profile-img" src="officer.png"
                    alt="">
                <form class="form-signin" action="ApplicantController?action=LoginOfficer" method="post">
                <input type="text" class="form-control" placeholder="Email" required name="email" autofocus><br>
                <input type="text" class="form-control" placeholder="Police Station Name" name="stationname" required autofocus><br>
                <input type="password" class="form-control" placeholder="Password" name="password" required>
                <button class="btn btn-lg btn-primary btn-block" type="submit">
                    Sign in</button>
                <label class="checkbox pull-left">
                    <input type="checkbox" name="rememberme" value="remember-me">
                    Remember me
                </label>
                <a href="#" class="pull-right need-help">Need help? </a><span class="clearfix"></span>
                </form>
            </div>
            <a href="RegistrationCivilian.jsp" class="text-center new-account">Create an account </a>
        </div>
    </div>
</div>
<br><br>
</body>
</html>