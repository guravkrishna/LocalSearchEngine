<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from rn53themes.net/themes/demo/directory/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Jul 2018 05:07:44 GMT -->
<!-- <head>
	<title>World Best Local Directory Website template</title>
	META TAGS
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	FAV ICON(BROWSER TAB ICON)
	<link rel="shortcut icon" href="images/fav.ico" type="image/x-icon">
	GOOGLE FONT
	<link href="https://fonts.googleapis.com/css?family=Poppins%7CQuicksand:500,700" rel="stylesheet">
	FONTAWESOME ICONS
	<link rel="stylesheet" href="css/font-awesome.min.css">
	ALL CSS FILES
	<link href="css/materialize.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
	RESPONSIVE.CSS ONLY FOR MOBILE AND TABLET VIEWS
	<link href="css/responsive.css" rel="stylesheet">
	HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries
	WARNING: Respond.js doesn't work if you view the page via file://
	[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	   <script src="https://apis.google.com/js/platform.js" async defer></script>
   <meta name="google-signin-client_id" content="385893468268-dh0j2ng5po7n2e0jlna70pi76htmv06a.apps.googleusercontent.com">
	
	<script type="text/javascript">
	
	history.pushState(null,null,'user_login.jsp');
	  window.addEventListener('popstate',function(event){
	  history.pushState(null,null,'user_login.jsp');
	  });
 // This is called with the results from from FB.getLoginStatus().
 function statusChangeCallback(response) {
 console.log('statusChangeCallback');
 console.log(response);
 // The response object is returned with a status field that lets the
 // app know the current login status of the person.
 // Full docs on the response object can be found in the documentation
 // for FB.getLoginStatus().
 if (response.status === 'connected') {
 // Logged into your app and Facebook.
 testAPI();
 } else if (response.status === 'not_authorized') {
 // The person is logged into Facebook, but not your app.
 document.getElementById('status').innerHTML = 'Login with Facebook ';
 } else {
 // The person is not logged into Facebook, so we're not sure if
 // they are logged into this app or not.
 document.getElementById('status').innerHTML = 'Login with Facebook ';
 }
 }
 // This function is called when someone finishes with the Login
 // Button. See the onlogin handler attached to it in the sample
 // code below.
 function checkLoginState() {
 FB.getLoginStatus(function(response) {
 statusChangeCallback(response);
 });
 }
 window.fbAsyncInit = function() {
 FB.init({ 
 appId : '187110881957416',
 cookie : true, // enable cookies to allow the server to access 
 // the session
 xfbml : true, // parse social plugins on this page
 version : 'v2.2' // use version 2.2
 });
 // Now that we've initialized the JavaScript SDK, we call 
 // FB.getLoginStatus(). This function gets the state of the
 // person visiting this page and can return one of three states to
 // the callback you provide. They can be:
 //
 // 1. Logged into your app ('connected')
 // 2. Logged into Facebook, but not your app ('not_authorized')
 // 3. Not logged into Facebook and can't tell if they are logged into
 // your app or not.
 //
 // These three cases are handled in the callback function.

 FB.getLoginStatus(function(response) {
 statusChangeCallback(response);
 });
 };
 // Load the SDK asynchronously
 (function(d, s, id) {
 var js, fjs = d.getElementsByTagName(s)[0];
 if (d.getElementById(id)) return;
 js = d.createElement(s); js.id = id;
 js.src = "//connect.facebook.net/en_US/sdk.js";
 fjs.parentNode.insertBefore(js, fjs);
 }(document, 'script', 'facebook-jssdk')); 

 // Here we run a very simple test of the Graph API after login is
 // successful. See statusChangeCallback() for when this call is made.
 function testAPI() { 
 console.log('Welcome! Fetching your information.... ');
 FB.api('/me?fields=name,email', function(response) {
 console.log('Successful login for: ' + response.name); 
 
 document.getElementById("status").innerHTML = '<p>Welcome '+response.name+'! <a href=fblogincontroller.jsp?user_name='+ response.name.replace(" ", "_") +'&user_email='+ response.email +'>Continue with facebook login</a></p>'
 });
 } 
</script> 
<!--
 Below we include the Login Button social plugin. This button uses
 the JavaScript SDK to present a graphical Login button that triggers
 the FB.login() function when clicked.
-->
<br><br>
</head>

<body data-ng-app="">
	
	<!--TOP SEARCH SECTION-->
	
	<%@include file="header.html" %>
	<section class="tz-register">
			<div class="log-in-pop">
				<div class="log-in-pop-left">
					<h1>Hello... <span>{{ name1 }}</span></h1>
					<p>Don't have an account? Create your account. It's take less then a minutes</p>
					<h4>Login with social media</h4>
					
					<fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
						</fb:login-button>
						<div id="status">
					</div>
					<div class="g-signin2" data-onsuccess="onSignIn" id="myP"></div>
				      <img id="myImg"><br>
				      <p id="name"></p>
				      <div id="status1">
				   </div> 
				    <script type="text/javascript">
      function onSignIn(googleUser) {
    	// window.location.href='success.jsp';
      var profile = googleUser.getBasicProfile();
      var imagurl=profile.getImageUrl();
      var name=profile.getName();
      var email=profile.getEmail();
      System.out.println(email);
      document.getElementById("myImg").src = imagurl;
      document.getElementById("name").innerHTML = name;
      document.getElementById("myP").style.visibility = "hidden";
      document.getElementById("status1").innerHTML = 'Welcome '+name+'!<a href=success.jsp?
      email='+email+'&name='+name+'/>Continue with Google login</a></p>'
   }
   </script>
   <button onclick="myFunction()">Sign Out</button>
   <script>
      function myFunction() {
      gapi.auth2.getAuthInstance().disconnect();
      location.reload();
   }
   </script>
				</div>
				<div class="log-in-pop-right">
					<a href="#" class="pop-close" data-dismiss="modal"><img src="images/cancel.html" alt="" />
					</a>
					<h4>Login</h4>
					<p>Don't have an account? Create your account. It's take less then a minutes</p>
					<form class="s12" action="LoginServlet" method="post">
						<div>
							<div class="input-field s12">
								<input type="text"name="email" data-ng-model="name1" class="validate">
								<label>User name</label>
							</div>
						</div>
						<div>
							<div class="input-field s12">
								<input type="password" name="passw" class="validate">
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
	<!-- <section class="web-app com-padd">
		<div class="container">
			<div class="row">
				<div class="col-md-6 web-app-img"> <img src="images/mobile.png" alt="" /> </div>
				<div class="col-md-6 web-app-con">
					<h2>Looking for the Best Service Provider? <span>Get the App!</span></h2>
					<ul>
						<li><i class="fa fa-check" aria-hidden="true"></i> Find nearby listings</li>
						<li><i class="fa fa-check" aria-hidden="true"></i> Easy service enquiry</li>
						<li><i class="fa fa-check" aria-hidden="true"></i> Listing reviews and ratings</li>
						<li><i class="fa fa-check" aria-hidden="true"></i> Manage your listing, enquiry and reviews</li>
					</ul> <span>We'll send you a link, open it on your phone to download the app</span>
					<form>
						<ul>
							<li>
								<input type="text" placeholder="+01" /> </li>
							<li>
								<input type="number" placeholder="Enter mobile number" /> </li>
							<li>
								<input type="submit" value="Get App Link" /> </li>
						</ul>
					</form>
					<a href="#"><img src="images/android.png" alt="" /> </a>
					<a href="#"><img src="images/apple.png" alt="" /> </a>
				</div>
			</div>
		</div>
	</section>
	FOOTER SECTION
	<footer id="colophon" class="site-footer clearfix">
		<div id="quaternary" class="sidebar-container " role="complementary">
			<div class="sidebar-inner">
				<div class="widget-area clearfix">
					<div id="azh_widget-2" class="widget widget_azh_widget">
						<div data-section="section">
							<div class="container">
								<div class="row">
									<div class="col-sm-4 col-md-3 foot-logo"> <img src="images/foot-logo.png" alt="logo">
										<p class="hasimg">Worlds's No. 1 Local Business Directory Website.</p>
										<p class="hasimg">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. </p>
									</div>
									<div class="col-sm-4 col-md-3">
										<h4>Support & Help</h4>
										<ul class="two-columns">
											<li> <a href="advertise.html">Advertise us</a> </li>
											<li> <a href="about-us.html">About Us</a> </li>
											<li> <a href="customer-reviews.html">Review</a> </li>
											<li> <a href="how-it-work.html">How it works </a> </li>
											<li> <a href="add-listing.html">Add Business</a> </li>
											<li> <a href="#!">Register</a> </li>
											<li> <a href="#!">Login</a> </li>
											<li> <a href="#!">Quick Enquiry</a> </li>
											<li> <a href="#!">Ratings </a> </li>
											<li> <a href="trendings.html">Top Trends</a> </li>
										</ul>
									</div>
									<div class="col-sm-4 col-md-3">
										<h4>Popular Services</h4>
										<ul class="two-columns">
											<li> <a href="#!">Hotels</a> </li>
											<li> <a href="#!">Hospitals</a> </li>
											<li> <a href="#!">Transportation</a> </li>
											<li> <a href="#!">Real Estates </a> </li>
											<li> <a href="#!">Automobiles</a> </li>
											<li> <a href="#!">Resorts</a> </li>
											<li> <a href="#!">Education</a> </li>
											<li> <a href="#!">Sports Events</a> </li>
											<li> <a href="#!">Web Services </a> </li>
											<li> <a href="#!">Skin Care</a> </li>
										</ul>
									</div>
									<div class="col-sm-4 col-md-3">
										<h4>Cities Covered</h4>
										<ul class="two-columns">
											<li> <a href="#!">Atlanta</a> </li>
											<li> <a href="#!">Austin</a> </li>
											<li> <a href="#!">Baltimore</a> </li>
											<li> <a href="#!">Boston </a> </li>
											<li> <a href="#!">Chicago</a> </li>
											<li> <a href="#!">Indianapolis</a> </li>
											<li> <a href="#!">Las Vegas</a> </li>
											<li> <a href="#!">Los Angeles</a> </li>
											<li> <a href="#!">Louisville </a> </li>
											<li> <a href="#!">Houston</a> </li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div data-section="section" class="foot-sec2">
							<div class="container">
								<div class="row">
									<div class="col-sm-3">
										<h4>Payment Options</h4>
										<p class="hasimg"> <img src="images/payment.png" alt="payment"> </p>
									</div>
									<div class="col-sm-4">
										<h4>Address</h4>
										<p>28800 Orchard Lake Road, Suite 180 Farmington Hills, U.S.A. Landmark : Next To Airport</p>
										<p> <span class="strong">Phone: </span> <span class="highlighted">+01 1245 2541</span> </p>
									</div>
									<div class="col-sm-5 foot-social">
										<h4>Follow with us</h4>
										<p>Join the thousands of other There are many variations of passages of Lorem Ipsum available</p>
										<ul>
											<li><a href="#!"><i class="fa fa-facebook" aria-hidden="true"></i></a> </li>
											<li><a href="#!"><i class="fa fa-google-plus" aria-hidden="true"></i></a> </li>
											<li><a href="#!"><i class="fa fa-twitter" aria-hidden="true"></i></a> </li>
											<li><a href="#!"><i class="fa fa-linkedin" aria-hidden="true"></i></a> </li>
											<li><a href="#!"><i class="fa fa-youtube" aria-hidden="true"></i></a> </li>
											<li><a href="#!"><i class="fa fa-whatsapp" aria-hidden="true"></i></a> </li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				.widget-area
			</div>
			.sidebar-inner
		</div>
		#quaternary
	</footer>
	COPY RIGHTS
	<section class="copy">
		<div class="container">
			<p>copyrights © 2017 RN53Themes.net. &nbsp;&nbsp;All rights reserved. </p>
		</div>
	</section>
	QUOTS POPUP
	<section>
		GET QUOTES POPUP
		<div class="modal fade dir-pop-com" id="list-quo" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header dir-pop-head">
						<button type="button" class="close" data-dismiss="modal">×</button>
						<h4 class="modal-title">Get a Quotes</h4>
						<i class="fa fa-pencil dir-pop-head-icon" aria-hidden="true"></i>
					</div>
					<div class="modal-body dir-pop-body">
						<form method="post" class="form-horizontal">
							LISTING INFORMATION
							<div class="form-group has-feedback ak-field">
								<label class="col-md-4 control-label">Full Name *</label>
								<div class="col-md-8">
									<input type="text" class="form-control" name="fname" placeholder="" required> </div>
							</div>
							LISTING INFORMATION
							<div class="form-group has-feedback ak-field">
								<label class="col-md-4 control-label">Mobile</label>
								<div class="col-md-8">
									<input type="text" class="form-control" name="mobile" placeholder=""> </div>
							</div>
							LISTING INFORMATION
							<div class="form-group has-feedback ak-field">
								<label class="col-md-4 control-label">Email</label>
								<div class="col-md-8">
									<input type="text" class="form-control" name="email" placeholder=""> </div>
							</div>
							LISTING INFORMATION
							<div class="form-group has-feedback ak-field">
								<label class="col-md-4 control-label">Message</label>
								<div class="col-md-8 get-quo">
									<textarea class="form-control"></textarea>
								</div>
							</div>
							LISTING INFORMATION
							<div class="form-group has-feedback ak-field">
								<div class="col-md-6 col-md-offset-4">
									<input type="submit" value="SUBMIT" class="pop-btn"> </div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div> -->
		<!-- GET QUOTES Popup END -->
	
</body>

</html>