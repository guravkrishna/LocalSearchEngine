<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="header.html" %>
	
	
	<section class="tz-register">
			<div class="log-in-pop">
				
				<div class="log-in-pop-right">
					<a href="#" class="pop-close" data-dismiss="modal"><img src="images/cancel.html" alt="" />
					</a>
					<h4>Admin Login</h4>
					<p>Don't have an account? Create your account. It's take less then a minutes</p>
					<form class="s12" action="LoginServlet" method="post">
						<div>
							<div class="input-field s12">
								<input type="text" data-ng-model="name1" name="email" class="validate">
								<label>E-Mail</label>
							</div>
						</div>
						<div>
							<div class="input-field s12">
								<input type="password" name="passw"class="validate">
								<label>Password</label>
							</div>
						</div>
						<div>
							<div class="input-field s4">
								<input type="submit" value="Login" class="waves-effect waves-light log-in-btn"> </div>
								
						</div>
						<div>
							<div class="input-field s12"> <a href="forgot-pass.html">Forgot password</a> | <a href="register.html">Create a new account</a> </div>
						</div>
					</form>
				</div>
			</div>
	</section>
	<!--MOBILE APP-->
	<%@include file="footer.html" %>
	
</body>


</html>