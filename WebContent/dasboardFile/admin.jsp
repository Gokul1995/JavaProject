<?xml version="1.0" encoding="ISO-8859-1" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Login</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

</head>
<body>
	
	

<div class="login-form" >
	<div ><h1>Login:</h1></div>
	<section class = "form">
            <form action="UserHandler" method="post">
			<div class="input uname">
				<input type="text" id="email" value="email" placeholder="Enter your email address" required/>
				<i class="fa fa-envelope" aria-hidden="true"></i>
			</div>
			<div class="input pass">
				<input type="password" id="password" value="pass" placeholder="Password" required/>
				<i class="fa fa-lock"></i>
			</div>
			<a href="#" style="float: right;color: gray;font-size: 14px; font-family: sans-serif,Arial;text-decoration: none;">Lost your Password?</a>
			
			<div>
				<input type="submit" id="login" name="login" value="login" />
			
			</div>
			
		</form>
	</section>
</div>
</body>
</html>