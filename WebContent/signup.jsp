<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup</title>

<link rel="stylesheet" type="text/css" href="css/das-style.css">
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

</head>
<body>
<div class="login-form">
	<div class="login-face"><img src="image/signup.png" alt="" /></div>
	<section class = "form">
		<form action="UserHandler" method="post" >
			<div class="input uname">
				<input type="text" id = "username" name="username"  placeholder="Username" required/>
				<i class="fa fa-user" aria-hidden="true"></i>
			</div>
			<div class="input pass">
				<input type="text" id = "email" name="email" placeholder = "Email Address" required/>
				<i class="fa fa-envelope"></i>
			</div>
			<div class="input pass">
				<input type="password" id = "pass" name="pass" placeholder = "Password" required/>
				<i class="fa fa-lock"></i>
			</div>
			<div class="input pass">
				<input type="text" id = "address" name="address" placeholder = "Current Address" required/>
				<i class="fa fa-envelope"></i>
				
			</div>
			<div class="input pass">
				<input type="text" id = "phone" name="phone" placeholder = "Phone Number" required/>
				<i class="fa fa-envelope"></i>
			</div>
<!-- 			<div class="input pass"> -->
<!-- 				<input type="password" id = "passwordConfirm" name="passwordConfirm" placeholder = "Confirm Password" required/> -->
<!-- 				<i class="fa fa-lock"></i> -->

				<input type="submit" id = "signup" name="signup" value="Register" />
			
			</div>
			
		</form>
	</section>
</div>
</body>
</html>