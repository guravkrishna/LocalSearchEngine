<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Local Search Engine</title>
	<!-- META TAGS -->
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="x-ua-compatible" content="IE=edge">
	<!-- FAV ICON(BROWSER TAB ICON) -->
	<link rel="shortcut icon" href="images/fav.ico" type="image/x-icon">
	<!-- GOOGLE FONT -->
	<link href="https://fonts.googleapis.com/css?family=Poppins%7CQuicksand:500,700" rel="stylesheet">
	<!-- FONTAWESOME ICONS -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- ALL CSS FILES -->
	<link href="css/materialize.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
	<!-- RESPONSIVE.CSS ONLY FOR MOBILE AND TABLET VIEWS -->
	<link href="css/responsive.css" rel="stylesheet">
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
		
	<script src="/test/application.js" type="text/javascript"></script>
	 <script src="https://maps.googleapis.com/maps/api/js?sensor=false&libraries=places&language=en"></script>
  
	
	
</head>

<body>
	<!--PRE LOADING-->
	<!-- <div id="preloader">
		<div id="status">&nbsp;</div>
	</div> -->
	<!--BANNER AND SERACH BOX-->
	<section id="background" class="dir1-home-head">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="dir-ho-tl">
						<ul>
							<li>
								<a href="main.jsp"><img src="images/logo.png" alt=""> </a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="dir-ho-tr">
						<ul>
							<li><a href="register.html">Register</a> </li>
							<li><a href="user_login.jsp">Sign In</a> </li>
							<li><a href="User_free_listing.jsp"><i class="fa fa-plus" aria-hidden="true"></i> Add Listing</a> </li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="container dir-ho-t-sp">
			<div class="row">
				<div class="dir-hr1">
					<div class="dir-ho-t-tit">
						<h1>Connect with the right Service Experts</h1> 
						<p>Find B2B & B2C businesses contact addresses, phone numbers,<br> user ratings and reviews.</p>
					</div>
					<form class="tourz-search-form">
						<div class="input-field">
							<input type="text" id="select-city" class="autocomplete">
							
							<label for="select-city">Enter city</label>
						</div>
						<div class="input-field">
							<input type="text" id="select-search" class="autocomplete">
							<label for="select-search" class="search-hotel-type">Search your services like hotel, resorts, events and more</label>
						</div>
						<div class="input-field">
							<input type="submit" value="search" class="waves-effect waves-light tourz-sear-btn"> </div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!--TOP SEARCH SECTION-->
	<section id="myID" class="bottomMenu hom-top-menu">
		<div class="container top-search-main">
			<div class="row">
				<div class="ts-menu">
					<!--SECTION: LOGO-->
					<div class="ts-menu-1">
						<a href="main.html"><img src="images/aff-logo.png" alt=""> </a>
					</div>
					<!--SECTION: BROWSE CATEGORY(NOTE:IT'S HIDE ON MOBILE & TABLET VIEW)-->
					<div class="ts-menu-2"><a href="#" class="t-bb">All Pages <i class="fa fa-angle-down" aria-hidden="true"></i></a>
						<!--SECTION: BROWSE CATEGORY-->
						<div class="cat-menu cat-menu-1">
							<div class="dz-menu">
								<div class="dz-menu-inn">
									<h4>Frontend Pages</h4>
									<ul>
										<li><a href="main.jsp">Home</a></li>
										<li><a href="about-us.jsp"> About Us</a> </li>
										<li><a href="contact-us.jsp"> Contact Us</a> </li>
									</ul>
								</div>
								<div class="dz-menu-inn">
									<h4>Business 2 Business</h4>
									<ul>
										<li> <a href="b2b.html">Electronics &amp; Electrical Supplies</a> </li>
										<li> <a href="b2b.html">Industrial Machinery &amp; Equipments</a> </li>
										<li> <a href="b2b.html">Construction Machinery &amp; Supplies</a> </li>
										<li> <a href="b2b.html">Automobiles Spare Parts &amp; Services</a> </li>
										
									</ul>
								</div>
								<div class="dz-menu-inn">
									<h4>Business 2 Customer</h4>
									<ul>
									
										<li><a href="b2c.html"> JustDial</a> </li>
										<li><a href="b2c.html">Sulekha</a> </li>
										<li><a href="b2c.html">BizzcityInfo</a> </li>
										<li><a href="b2c.html"> Hotel  </a> </li>
										<li><a href="b2c.html">Flights </a> </li>
									</ul>
								</div>
								<div class="dz-menu-inn">
									<h4>Customer 2 Customer</h4>
									<ul>
										<li><a href="c2c.html">OLA</a> </li>
										<li><a href="c2c.html">OLAX</a> </li>
										<li><a href="c2c.html">UBER</a> </li>
										<li><a href="c2c.html">Flipkart</a> </li>
										
									</ul>
								</div>
								<div class="dz-menu-inn">
									<h4>Dashboard Pages</h4>
									<ul>
										<li><a href="#"> User Register</a> </li>
										<li><a href="#"> User Login</a> </li>
										<li><a href="#"> Forgot Password</a> </li>
										<li><a href="#"> Messages</a> </li>
										<li><a href="#"> Dashboard Profile</a> </li>
										<li><a href="#"> Post Ads </a> </li>
										<li><a href="#"> Download Invoice </a> </li>
									</ul>
								</div>
								<div class="dz-menu-inn lat-menu">
									<h4>Admin Panel Pages</h4>
									<ul>
										<li><a target="_blank" href="admin.jsp">Admin</a> </li>
										<li><a target="_blank" href="admin-all-listing1.jsp"> All Listing</a> </li>
										<li><a target="_blank" href="admin-all-users.html"> All Users</a> </li>
										<li><a target="_blank" href="admin-analytics.html"> Analytics</a> </li>
										<li><a target="_blank" href="admin-ads.html"> Advertisement</a> </li>
										<li><a target="_blank" href="admin-setting.html"> Admin Setting </a> </li>
										<li><a target="_blank" href="admin-payment.html"> Payments </a> </li>
									</ul>
								</div>
							</div>
							<div class="dir-home-nav-bot">
								<ul>
									<li>A few reasons you’ll love Online Business Directory <span>Call us on: 080 8490 4890</span> </li>
									<li><a href="advertise.html" class="waves-effect waves-light btn-large"><i class="fa fa-bullhorn"></i> Advertise with us</a>
									</li>
									<li><a href="db-listing-add.html" class="waves-effect waves-light btn-large"><i class="fa fa-bookmark"></i> Add your business</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					
					<!--SECTION: SEARCH BOX-->
					<div class="ts-menu-3">
						<div class="">
							<form class="tourz-search-form tourz-top-search-form">
								<div class="input-field">
									<input type="text" id="top-select-city" class="autocomplete">
									<label for="top-select-city">Enter city</label>
									
								</div>
								<div class="input-field">
									<input type="text" id="top-select-search" class="autocomplete">
									<label for="top-select-search" class="search-hotel-type">Search your services like hotel, resorts, events and more</label>
								</div>
								<div class="input-field">
									<input type="submit" value="" class="waves-effect waves-light tourz-top-sear-btn"> </div>
							</form>
						</div>
					</div>
					<!--SECTION: REGISTER,SIGNIN AND ADD YOUR BUSINESS-->
					<div class="ts-menu-4">
						<div class="v3-top-ri">
							<ul>
								<li><a href="user_login.jsp" class="v3-menu-sign"><i class="fa fa-sign-in"></i> Sign In</a> </li>
								<li><a href="User_free_listing.jsp" class="v3-add-bus"><i class="fa fa-plus" aria-hidden="true"></i> Add Listing</a> </li>
							</ul>
						</div>
					</div>
					<!--MOBILE MENU ICON:IT'S ONLY SHOW ON MOBILE & TABLET VIEW-->
					<div class="ts-menu-5"><span><i class="fa fa-bars" aria-hidden="true"></i></span> </div>
					<!--MOBILE MENU CONTAINER:IT'S ONLY SHOW ON MOBILE & TABLET VIEW-->
					<div class="mob-right-nav" data-wow-duration="0.5s">
						<div class="mob-right-nav-close"><i class="fa fa-times" aria-hidden="true"></i> </div>
						<h5>Business</h5>
						<ul class="mob-menu-icon">
							<li><a href="price.html">Add Business</a> </li>
							<li><a href="#!" data-toggle="modal" data-target="#register">Register</a> </li>
							<li><a href="#!" data-toggle="modal" data-target="#sign-in">Sign In</a> </li>
						</ul>
						<h5>All Categories</h5>
						<ul>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Help Services</a> </li>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Appliances Repair & Services</a> </li>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Furniture Dealers</a> </li>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Packers and Movers</a> </li>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Pest Control </a> </li>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Solar Product Dealers</a> </li>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Interior Designers</a> </li>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Carpenters</a> </li>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Plumbing Contractors</a> </li>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Modular Kitchen</a> </li>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Internet Service Providers</a> </li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--HOME PROJECTS-->
	<section class="proj mar-bot-red-m30">
		<div id='map-canvas'></div>
		<div class="container">
			<div class="row">
				<!--HOME PROJECTS: 1-->
				<div class="col-md-3 col-sm-6">
					<div class="hom-pro"> <img src="images/icon/1.png" alt="" />
						<h4>24 Million Business</h4>
						<p>Choose from a collection of handpicked luxury villas & apartments</p> <a href="#!">Explore Now</a> </div>
				</div>
				<!--HOME PROJECTS: 1-->
				<div class="col-md-3 col-sm-6">
					<div class="hom-pro"> <img src="images/icon/2.png" alt="" />
						<h4>1,200 Services Offered</h4>
						<p>Choose from a collection of handpicked luxury villas & apartments</p> <a href="#!">Explore Now</a> </div>
				</div>
				<!--HOME PROJECTS: 1-->
				<div class="col-md-3 col-sm-6">
					<div class="hom-pro"> <img src="images/icon/3.png" alt="" />
						<h4>05 Million Visitors</h4>
						<p>Choose from a collection of handpicked luxury villas & apartments</p> <a href="#!">Explore Now</a> </div>
				</div>
				<!--HOME PROJECTS: 1-->
				<div class="col-md-3 col-sm-6">
					<div class="hom-pro"> <img src="images/icon/7.png" alt="" />
						<h4>24 Million Business</h4>
						<p>Choose from a collection of handpicked luxury villas & apartments</p> <a href="#!">Explore Now</a> </div>
				</div>
			</div>
		</div>
	</section>
	
	<section class="cat-v2-hom com-padd mar-bot-red-m30">
		<div class="container">
			<div class="row">
				<div class="com-title">
					<h2>Find your <span>Services</span></h2>
					<p>Explore some of the best business from around the world from our partners and friends.</p>
				</div>
				<div class="cat-v2-hom-list">
					<ul>
						<li>
							<a href="hospitallist.jsp"><img src="images/icon/hcat1.png" alt="">Hospitals</a>
						 </li>
						<li>
							<a href="hotellist.jsp"><img src="images/icon/hcat2.png" alt=""> Hotel & Resort</a>
						</li>
						<li>
							<a href="eventslist.jsp"><img src="images/icon/hcat3.png" alt=""> Events</a>
						</li>
						<li>
							<a href="weddinggrid.html"><img src="images/icon/hcat4.png" alt=""> Wedding Halls</a>
						</li>
						<li>
							<a href="shopsgrid.html"><img src="images/icon/hcat5.png" alt=""> Shops</a>
						</li>
						<li>
							<a href="gymgrid.html"><img src="images/icon/hcat6.png" alt=""> Fitness & Gym</a>
						</li>
						<li>
							<a href="sportsgrid.html"><img src="images/icon/hcat7.png" alt=""> Sports</a>
						</li>
						<li>
							<a href="educationgrid.html"><img src="images/icon/hcat8.png" alt=""> Education</a>
						</li>
						<li>
							<a href="directory/electricgrid.html"><img src="images/icon/hcat9.png" alt=""> Electricals</a>
						</li>
						<li>
							<a href="autogrid.html"><img src="images/icon/hcat10.png" alt=""> Automobiles</a>
						</li>
						<li>
							<a href="realgrid.html"><img src="images/icon/hcat11.png" alt=""> Real Estates</a>
						</li>
						<li>
							<a href="importgrid.html"><img src="images/icon/hcat12.png" alt=""> Import & Export</a>
						</li>
						<li>
							<a href="interiorgrid.html"><img src="images/icon/hcat13.png" alt=""> Interior Design</a>
						</li>
						<li>
							<a href="softwaregrid.html"><img src="images/icon/hcat14.png" alt=""> Software Solutions</a>
						</li>
						<li>
							<a href="yogagrid.html"><img src="images/icon/hcat15.png" alt=""> Yoga Training</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<!--FIND YOUR SERVICE
	<section class="com-padd com-padd-redu-bot1 pad-bot-red-40">
		<div class="container">
			<div class="row">
				<div class="com-title">
					<h2>Find your <span>Services</span></h2>
					<p>Explore some of the best business from around the world from our partners and friends.</p>
				</div>
				<div class="dir-hli">
					<ul>
						<!--=====LISTINGS======
						<li class="col-md-3 col-sm-6">
							<a href="list.html">
								<div class="dir-hli-5">
									<div class="dir-hli-1">
										<div class="dir-hli-3"><img src="images/hci1.png" alt=""> </div>
										<div class="dir-hli-4"> </div> <img src="images/services/15.jpg" alt=""> </div>
									<div class="dir-hli-2">
										<h4>Hotels & Resorts <span class="dir-ho-cat">Show All (940)</span></h4> </div>
								</div>
							</a>
						</li>
						<!--=====LISTINGS======
						<li class="col-md-3 col-sm-6">
							<a href="list-grid.html">
								<div class="dir-hli-5">
									<div class="dir-hli-1">
										<div class="dir-hli-3"><img src="images/hci1.png" alt=""> </div>
										<div class="dir-hli-4"> </div> <img src="images/services/13.jpg" alt=""> </div>
									<div class="dir-hli-2">
										<h4>Hospitals <span class="dir-ho-cat">Show All (174)</span></h4> </div>
								</div>
							</a>
						</li>
						<!--=====LISTINGS======
						<li class="col-md-3 col-sm-6">
							<a href="list.html">
								<div class="dir-hli-5">
									<div class="dir-hli-1">
										<div class="dir-hli-3"><img src="images/hci1.png" alt=""> </div>
										<div class="dir-hli-4"> </div> <img src="images/services/9.jpg" alt=""> </div>
									<div class="dir-hli-2">
										<h4>Transportation <span class="dir-ho-cat">Show All (624)</span></h4> </div>
								</div>
							</a>
						</li>
						<!--=====LISTINGS======
						<li class="col-md-3 col-sm-6">
							<a href="list-grid.html">
								<div class="dir-hli-5">
									<div class="dir-hli-1">
										<div class="dir-hli-3"><img src="images/hci1.png" alt=""> </div>
										<div class="dir-hli-4"> </div> <img src="images/services/12.jpg" alt=""> </div>
									<div class="dir-hli-2">
										<h4>Property <span class="dir-ho-cat">Show All (960)</span></h4> </div>
								</div>
							</a>
						</li>
						<!--=====LISTINGS======
						<li class="col-md-3 col-sm-6">
							<a href="list.html">
								<div class="dir-hli-5">
									<div class="dir-hli-1">
										<div class="dir-hli-3"><img src="images/hci1.png" alt=""> </div>
										<div class="dir-hli-4"> </div> <img src="images/services/2.jpg" alt=""> </div>
									<div class="dir-hli-2">
										<h4>Automobilers <span class="dir-ho-cat">Show All (745)</span></h4> </div>
								</div>
							</a>
						</li>
						<!--=====LISTINGS======
						<li class="col-md-3 col-sm-6">
							<a href="list-grid.html">
								<div class="dir-hli-5">
									<div class="dir-hli-1">
										<div class="dir-hli-3"><img src="images/hci1.png" alt=""> </div>
										<div class="dir-hli-4"> </div> <img src="images/services/6.jpg" alt=""> </div>
									<div class="dir-hli-2">
										<h4>Electricals <span class="dir-ho-cat">Show All (865)</span></h4> </div>
								</div>
							</a>
						</li>
						<!--=====LISTINGS======
						<li class="col-md-3 col-sm-6">
							<a href="list.html">
								<div class="dir-hli-5">
									<div class="dir-hli-1">
										<div class="dir-hli-3"><img src="images/hci1.png" alt=""> </div>
										<div class="dir-hli-4"> </div> <img src="images/services/16.jpg" alt=""> </div>
									<div class="dir-hli-2">
										<h4>Education <span class="dir-ho-cat">Show All (935)</span></h4> </div>
								</div>
							</a>
						</li>
						<!--=====LISTINGS======
						<li class="col-md-3 col-sm-6">
							<a href="list-grid.html">
								<div class="dir-hli-5">
									<div class="dir-hli-1">
										<div class="dir-hli-3"><img src="images/hci1.png" alt=""> </div>
										<div class="dir-hli-4"> </div> <img src="images/services/8.jpg" alt=""> </div>
									<div class="dir-hli-2">
										<h4>Sports <span class="dir-ho-cat">Show All (361)</span></h4> </div>
								</div>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>-->
	<!--EXPLORE CITY LISTING-->
	<section class="com-padd com-padd-redu-top">
		<div class="container">
			<div class="row">
				<div class="com-title">
					<h2>Explore your <span>City Listings</span></h2>
					<p>Explore some of the best business from around the world from our partners and friends.</p>
				</div>
				<div class="col-md-6">
					<a href="list-lead.html">
						<div class="list-mig-like-com">
							<div class="list-mig-lc-img"> <img src="images/listing/home.jpg" alt="" /> </div>
							<div class="list-mig-lc-con">
								<div class="list-rat-ch list-room-rati"> <span>4.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
								<h5>United States</h5>
								<p>21 Cities . 2045 Listings . 3648 Users</p>
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-3">
					<a href="list-lead.html">
						<div class="list-mig-like-com">
							<div class="list-mig-lc-img"> <img src="images/listing/home2.jpg" alt="" /> </div>
							<div class="list-mig-lc-con list-mig-lc-con2">
								<h5>United Kingdom</h5>
								<p>18 Cities . 1454 Listings</p>
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-3">
					<a href="list-lead.html">
						<div class="list-mig-like-com">
							<div class="list-mig-lc-img"> <img src="images/listing/home3.jpg" alt="" /> </div>
							<div class="list-mig-lc-con list-mig-lc-con2">
								<h5>Australia</h5>
								<p>14 Cities . 1895 Listings</p>
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-3">
					<a href="list-lead.html">
						<div class="list-mig-like-com">
							<div class="list-mig-lc-img"> <img src="images/listing/home4.jpg" alt="" /> </div>
							<div class="list-mig-lc-con list-mig-lc-con2">
								<h5>Germany</h5>
								<p>12 Cities . 1260 Listings</p>
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-3">
					<a href="list-lead.html">
						<div class="list-mig-like-com">
							<div class="list-mig-lc-img"> <img src="images/listing/home1.jpg" alt="" /> </div>
							<div class="list-mig-lc-con list-mig-lc-con2">
								<h5>India</h5>
								<p>24 Cities . 4152 Listings</p>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>
	<!--ADD BUSINESS-->
	<section class="com-padd home-dis">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2><span>30% Off</span> Promote Your Business with us <a href="price.html">Add My Business</a></h2> </div>
			</div>
		</div>
	</section>
	<!--BEST THINGS-->
	<section class="com-padd com-padd-redu-bot1">
		<div class="container dir-hom-pre-tit">
			<div class="row">
				<div class="com-title">
					<h2>Top List Trendings <span> for your City</span></h2>
					<p>Explore some of the best tips from around the world from our partners and friends.</p>
				</div>
				<div class="col-md-6">
					<div>
						<!--POPULAR LISTINGS-->
						<div class="home-list-pop">
							<!--POPULAR LISTINGS IMAGE-->
							<div class="col-md-3"> <img src="images/services/tr1.jpg" alt="" /> </div>
							<!--POPULAR LISTINGS: CONTENT-->
							<div class="col-md-9 home-list-pop-desc"> <a href="automobile-listing-details.html"><h3>Import Motor America</h3></a>
								<h4>Express Avenue Mall, Santa Monica</h4>
								<p>28800 Orchard Lake Road, Suite 180 Farmington Hills, U.S.A.</p> <span class="home-list-pop-rat">4.2</span>
								<div class="hom-list-share">
									<ul>
										<li><a href="#!"><i class="fa fa-bar-chart" aria-hidden="true"></i> 52</a> </li>
										<li><a href="#!"><i class="fa fa-heart-o" aria-hidden="true"></i> 32</a> </li>
										<li><a href="#!"><i class="fa fa-eye" aria-hidden="true"></i> 420</a> </li>
										<li><a href="#!"><i class="fa fa-share-alt" aria-hidden="true"></i> 570</a> </li>
									</ul>
								</div>
							</div>
						</div>
						<!--POPULAR LISTINGS-->
						<div class="home-list-pop">
							<!--POPULAR LISTINGS IMAGE-->
							<div class="col-md-3"> <img src="images/services/tr2.jpg" alt="" /> </div>
							<!--POPULAR LISTINGS: CONTENT-->
							<div class="col-md-9 home-list-pop-desc"> <a href="property-listing-details.html"><h3>Luxury Property</h3></a>
								<h4>Express Avenue Mall, New York</h4>
								<p>28800 Orchard Lake Road, Suite 180 Farmington Hills, U.S.A.</p> <span class="home-list-pop-rat">4.2</span>
								<div class="hom-list-share">
									<ul>
										<li><a href="#!"><i class="fa fa-bar-chart" aria-hidden="true"></i> 52</a> </li>
										<li><a href="#!"><i class="fa fa-heart-o" aria-hidden="true"></i> 32</a> </li>
										<li><a href="#!"><i class="fa fa-eye" aria-hidden="true"></i> 420</a> </li>
										<li><a href="#!"><i class="fa fa-share-alt" aria-hidden="true"></i> 570</a> </li>
									</ul>
								</div>
							</div>
						</div>
						<!--POPULAR LISTINGS-->
						<div class="home-list-pop">
							<!--POPULAR LISTINGS IMAGE-->
							<div class="col-md-3"> <img src="images/services/tr3.jpg" alt="" /> </div>
							<!--POPULAR LISTINGS: CONTENT-->
							<div class="col-md-9 home-list-pop-desc"> <a href="shop-listing-details.html"><h3>Spicy Supermarket Shop</h3></a>
								<h4>Express Avenue Mall, Chicago</h4>
								<p>28800 Orchard Lake Road, Suite 180 Farmington Hills, U.S.A.</p> <span class="home-list-pop-rat">4.2</span>
								<div class="hom-list-share">
									<ul>
										<li><a href="#!"><i class="fa fa-bar-chart" aria-hidden="true"></i> 52</a> </li>
										<li><a href="#!"><i class="fa fa-heart-o" aria-hidden="true"></i> 32</a> </li>
										<li><a href="#!"><i class="fa fa-eye" aria-hidden="true"></i> 420</a> </li>
										<li><a href="#!"><i class="fa fa-share-alt" aria-hidden="true"></i> 570</a> </li>
									</ul>
								</div>
							</div>
						</div>
						<!--POPULAR LISTINGS-->
						<div class="home-list-pop">
							<!--POPULAR LISTINGS IMAGE-->
							<div class="col-md-3"> <img src="images/services/s4.jpg" alt="" /> </div>
							<!--POPULAR LISTINGS: CONTENT-->
							<div class="col-md-9 home-list-pop-desc"> <a href="list-lead.html"><h3>Packers and Movers</h3></a>
								<h4>Express Avenue Mall, Toronto</h4>
								<p>28800 Orchard Lake Road, Suite 180 Farmington Hills, U.S.A.</p> <span class="home-list-pop-rat">4.2</span>
								<div class="hom-list-share">
									<ul>
										<li><a href="#!"><i class="fa fa-bar-chart" aria-hidden="true"></i> 52</a> </li>
										<li><a href="#!"><i class="fa fa-heart-o" aria-hidden="true"></i> 32</a> </li>
										<li><a href="#!"><i class="fa fa-eye" aria-hidden="true"></i> 420</a> </li>
										<li><a href="#!"><i class="fa fa-share-alt" aria-hidden="true"></i> 570</a> </li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div>
						<!--POPULAR LISTINGS-->
						<div class="home-list-pop">
							<!--POPULAR LISTINGS IMAGE-->
							<div class="col-md-3"> <img src="images/services/s5.jpg" alt="" /> </div>
							<!--POPULAR LISTINGS: CONTENT-->
							<div class="col-md-9 home-list-pop-desc"> <a href="list-lead.html"><h3>Tour and Travels</h3></a>
								<h4>Express Avenue Mall, Los Angeles</h4>
								<p>28800 Orchard Lake Road, Suite 180 Farmington Hills, U.S.A.</p> <span class="home-list-pop-rat">4.2</span>
								<div class="hom-list-share">
									<ul>
										<li><a href="#!"><i class="fa fa-bar-chart" aria-hidden="true"></i> 52</a> </li>
										<li><a href="#!"><i class="fa fa-heart-o" aria-hidden="true"></i> 32</a> </li>
										<li><a href="#!"><i class="fa fa-eye" aria-hidden="true"></i> 420</a> </li>
										<li><a href="#!"><i class="fa fa-share-alt" aria-hidden="true"></i> 570</a> </li>
									</ul>
								</div>
							</div>
						</div>
						<!--POPULAR LISTINGS-->
						<div class="home-list-pop">
							<!--POPULAR LISTINGS IMAGE-->
							<div class="col-md-3"> <img src="images/services/s6.jpg" alt="" /> </div>
							<!--POPULAR LISTINGS: CONTENT-->
							<div class="col-md-9 home-list-pop-desc"> <a href="list-lead.html"><h3>Andru Modular Kitchen</h3></a>
								<h4>Express Avenue Mall, San Diego</h4>
								<p>28800 Orchard Lake Road, Suite 180 Farmington Hills, U.S.A.</p> <span class="home-list-pop-rat">4.2</span>
								<div class="hom-list-share">
									<ul>
										<li><a href="#!"><i class="fa fa-bar-chart" aria-hidden="true"></i> 52</a> </li>
										<li><a href="#!"><i class="fa fa-heart-o" aria-hidden="true"></i> 32</a> </li>
										<li><a href="#!"><i class="fa fa-eye" aria-hidden="true"></i> 420</a> </li>
										<li><a href="#!"><i class="fa fa-share-alt" aria-hidden="true"></i> 570</a> </li>
									</ul>
								</div>
							</div>
						</div>
						<!--POPULAR LISTINGS-->
						<div class="home-list-pop">
							<!--POPULAR LISTINGS IMAGE-->
							<div class="col-md-3"> <img src="images/services/s7.jpg" alt="" /> </div>
							<!--POPULAR LISTINGS: CONTENT-->
							<div class="col-md-9 home-list-pop-desc"> <a href="list-lead.html"><h3>Rute Skin Care & Treatment</h3></a>
								<h4>Express Avenue Mall, Toronto</h4>
								<p>28800 Orchard Lake Road, Suite 180 Farmington Hills, U.S.A.</p> <span class="home-list-pop-rat">4.2</span>
								<div class="hom-list-share">
									<ul>
										<li><a href="#!"><i class="fa fa-bar-chart" aria-hidden="true"></i> 52</a> </li>
										<li><a href="#!"><i class="fa fa-heart-o" aria-hidden="true"></i> 32</a> </li>
										<li><a href="#!"><i class="fa fa-eye" aria-hidden="true"></i> 420</a> </li>
										<li><a href="#!"><i class="fa fa-share-alt" aria-hidden="true"></i> 570</a> </li>
									</ul>
								</div>
							</div>
						</div>
						<!--POPULAR LISTINGS-->
						<div class="home-list-pop mar-bot-red-0">
							<!--POPULAR LISTINGS IMAGE-->
							<div class="col-md-3"> <img src="images/services/s8.jpg" alt="" /> </div>
							<!--POPULAR LISTINGS: CONTENT-->
							<div class="col-md-9 home-list-pop-desc"> <a href="list-lead.html"><h3>Health and Fitness</h3></a>
								<h4>Express Avenue Mall, San Diego</h4>
								<p>28800 Orchard Lake Road, Suite 180 Farmington Hills, U.S.A.</p> <span class="home-list-pop-rat">4.2</span>
								<div class="hom-list-share">
									<ul>
										<li><a href="#!"><i class="fa fa-bar-chart" aria-hidden="true"></i> 52</a> </li>
										<li><a href="#!"><i class="fa fa-heart-o" aria-hidden="true"></i> 32</a> </li>
										<li><a href="#!"><i class="fa fa-eye" aria-hidden="true"></i> 420</a> </li>
										<li><a href="#!"><i class="fa fa-share-alt" aria-hidden="true"></i> 570</a> </li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--CREATE FREE ACCOUNT-->
	<section class="com-padd sec-bg-white">
		<div class="container">
			<div class="row">
				<div class="com-title">
					<h2>Create a free <span>Account</span></h2>
					<p>Explore some of the best tips from around the world from our partners and friends.</p>
				</div>
				<div class="col-md-6">
					<div class="hom-cre-acc-left">
						<h3>A few reasons you’ll love Online <span>Business Directory</span></h3>
						<p>5 Benefits of Listing Your Business to a Local Online Directory</p>
						<ul>
							<li> <img src="images/icon/7.png" alt="">
								<div>
									<h5>Enhancing Your Business</h5>
									<p>Imagine you have made your presence online through a local online directory, but your competitors have..</p>
								</div>
							</li>
							<li> <img src="images/icon/5.png" alt="">
								<div>
									<h5>Advertising Your Business</h5>
									<p>Advertising your business to area specific has many advantages. For local businessmen, it is an opportunity..</p>
								</div>
							</li>
							<li> <img src="images/icon/6.png" alt="">
								<div>
									<h5>Develop Brand Image</h5>
									<p>Your local business too needs brand management and image making. As you know the local market..</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-md-6">
					<div class="hom-cre-acc-left hom-cre-acc-right">
						<form>
							<div class="row">
								<div class="input-field col s12">
									<input id="acc-name" type="text" class="validate">
									<label for="acc-name">Name</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12">
									<input id="acc-mob" type="number" class="validate">
									<label for="acc-mob">Mobile</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12">
									<input id="acc-mail" type="email" class="validate">
									<label for="acc-mail">Email</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12">
									<input id="acc-pass" type="password" class="validate">
									<label for="acc-pass">Password</label>
								</div>
							</div>
							<div class="row">
								<div class="col s12 hom-cr-acc-check">
									<input type="checkbox" id="test5" />
									<label for="test5">By signing up, you agree to the Terms and Conditions and Privacy Policy. You also agree to receive product-related emails.</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12"> <a class="waves-effect waves-light btn-large full-btn" href="#!">Submit Now</a> </div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--MOBILE APP-->
	<section class="web-app com-padd">
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
	<!--FOOTER SECTION-->
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
											<li><a href="https://www.facebook.com/"><i class="fa fa-facebook" aria-hidden="true"></i></a> </li>
											<li><a href="https://www.gogle.com/"><i class="fa fa-google-plus" aria-hidden="true"></i></a> </li>
											<li><a href="https://www.twitter.com/"><i class="fa fa-twitter" aria-hidden="true"></i></a> </li>
											<li><a href="https://www.linkedin.com/"><i class="fa fa-linkedin" aria-hidden="true"></i></a> </li>
											<li><a href="https://www.youtube.com/"><i class="fa fa-youtube" aria-hidden="true"></i></a> </li>
											<li><a href="tel:080 4890 8490"><i class="fa fa-whatsapp" aria-hidden="true"></i></a> </li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- .widget-area -->
			</div>
			<!-- .sidebar-inner -->
		</div>
		<!-- #quaternary -->
	</footer>
	<!--COPY RIGHTS-->
	<section class="copy">
		<div class="container">
			<p>copyrights © 2017 RN53Themes.net. &nbsp;&nbsp;All rights reserved. </p>
		</div>
	</section>
	<!--QUOTS POPUP-->
	<section>
		<!-- GET QUOTES POPUP -->
		<div class="modal fade dir-pop-com" id="list-quo" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header dir-pop-head">
						<button type="button" class="close" data-dismiss="modal">×</button>
						<h4 class="modal-title">Get a Quotes</h4>
						<!--<i class="fa fa-pencil dir-pop-head-icon" aria-hidden="true"></i>-->
					</div>
					<div class="modal-body dir-pop-body">
						<form method="post" class="form-horizontal">
							<!--LISTING INFORMATION-->
							<div class="form-group has-feedback ak-field">
								<label class="col-md-4 control-label">Full Name *</label>
								<div class="col-md-8">
									<input type="text" class="form-control" name="fname" placeholder="" required> </div>
							</div>
							<!--LISTING INFORMATION-->
							<div class="form-group has-feedback ak-field">
								<label class="col-md-4 control-label">Mobile</label>
								<div class="col-md-8">
									<input type="text" class="form-control" name="mobile" placeholder=""> </div>
							</div>
							<!--LISTING INFORMATION-->
							<div class="form-group has-feedback ak-field">
								<label class="col-md-4 control-label">Email</label>
								<div class="col-md-8">
									<input type="text" class="form-control" name="email" placeholder=""> </div>
							</div>
							<!--LISTING INFORMATION-->
							<div class="form-group has-feedback ak-field">
								<label class="col-md-4 control-label">Message</label>
								<div class="col-md-8 get-quo">
									<textarea class="form-control"></textarea>
								</div>
							</div>
							<!--LISTING INFORMATION-->
							<div class="form-group has-feedback ak-field">
								<div class="col-md-6 col-md-offset-4">
									<input type="submit" value="SUBMIT" class="pop-btn"> </div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- GET QUOTES Popup END -->
	</section>
	<!--SCRIPT FILES-->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/materialize.min.js" type="text/javascript"></script>
    <script src="js/custom.js"></script> 
</body>


</html>