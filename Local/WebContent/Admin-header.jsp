<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Indias Best Local Search Engine</title>
	<!-- META TAGS -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/materialize.min.js" type="text/javascript"></script>
	<script src="js/custom.js"></script>
</head>
<body>
   <!-- <div id="preloader">
		<div id="status">&nbsp;</div>
	</div> -->
	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	<%
		String id = request.getParameter("id");
		String driver = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/";
		String database = "localsearchengine";
		String userid = "root";
		String password = "root";
		try {
				Class.forName(driver);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
				}
			Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
	%>                                                               
      
  <!--== MAIN CONTRAINER ==-->
	<div class="container-fluid sb1">
		<div class="row">
			<!--== LOGO ==-->
			<div class="col-md-2 col-sm-3 col-xs-6 sb1-1"> <a href="#" class="btn-close-menu"><i class="fa fa-times" aria-hidden="true"></i></a> <a href="#" class="atab-menu"><i class="fa fa-bars tab-menu" aria-hidden="true"></i></a>
				<a href="main.jsp" class="logo"><img src="images/logo1.png" alt="" /> </a>
			</div>
			<!--== SEARCH ==-->
			<div class="col-md-6 col-sm-6 mob-hide">
				<form class="app-search">
					<input type="text" placeholder="Search..." class="form-control"> <a href="#"><i class="fa fa-search"></i></a> </form>
			</div>
			<!--== NOTIFICATION ==-->
			<div class="col-md-2 tab-hide">
				<div class="top-not-cen"> <a class='waves-effect btn-noti' href='#'><i class="fa fa-commenting-o" aria-hidden="true"></i><span>5</span></a> <a class='waves-effect btn-noti' href='#'><i class="fa fa-envelope-o" aria-hidden="true"></i><span>5</span></a> <a class='waves-effect btn-noti' href='#'><i class="fa fa-tag" aria-hidden="true"></i><span>5</span></a> </div>
			</div>
			<!--== MY ACCCOUNT ==-->
			<div class="col-md-2 col-sm-3 col-xs-6">
				<!-- Dropdown Trigger -->
				<a class='waves-effect dropdown-button top-user-pro' href='#' data-activates='top-menu'><img src="images/users/6.png" alt="" />My Account <i class="fa fa-angle-down" aria-hidden="true"></i> </a>
				<!-- Dropdown Structure -->
				<ul id='top-menu' class='dropdown-content top-menu-sty'>
					<li><a href="admin-setting.html" class="waves-effect"><i class="fa fa-cogs"></i>Admin Setting</a> </li>
					<li><a href="admin-analytics.html"><i class="fa fa-bar-chart"></i> Analytics</a> </li>
					<li><a href="admin-ads.html"><i class="fa fa-buysellads" aria-hidden="true"></i>Ads</a> </li>
					<li><a href="admin-payment.html"><i class="fa fa-usd" aria-hidden="true"></i> Payments</a> </li>
					<li><a href="admin-notifications.html"><i class="fa fa-bell-o"></i>Notifications</a> </li>
					<li><a href="#" class="waves-effect"><i class="fa fa-undo" aria-hidden="true"></i> Backup Data</a> </li>
					<li class="divider"></li>
					<%
					    try{
							connection = DriverManager.getConnection(connectionUrl+database, userid, password);
							statement=connection.createStatement();
							String sql ="select * from signup";
							// select * from listing where id='"+search+"' or first_name like '%"+search+"%' ; 
							resultSet = statement.executeQuery(sql);
							if(resultSet.next()){												
	                 %>
	                   <li><a href="ChangePassword.jsp"><i class="fa fa-sign-in" aria-hidden="true"></i>Change Password</a></li>
					   <li><a href="AdminLogoutServlet"><i class="fa fa-sign-in" aria-hidden="true"></i>Logout</a></li>
					
					<%
							}
							connection.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
					%>							
				</ul>
			</div>
		</div>
	</div>
	<!--== BODY CONTNAINER ==-->
	<div class="container-fluid sb2">
		<div class="row">
			<div class="sb2-1">
				<!--== USER INFO ==-->
				<div class="sb2-12">
					<ul>
						<li><img src="images/users/2.png" alt=""> </li>
						<li><h5>John Smith <span> Santa Ana, CA</span></h5> </li>
					</ul>
				</div>
				<!--== LEFT MENU ==-->
					<div class="sb2-13">
						<ul class="collapsible" data-collapsible="accordion">
							<li><a href="admin.jsp" class="menu-active"><i class="fa fa-tachometer" aria-hidden="true"></i> Dashboard</a></li>
							<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-list-ul" aria-hidden="true"></i>Listing Management</a>
							<div class="collapsible-body left-sub-menu">
								<ul>
									<li><a href="admin-all-listing.jsp">All Free listing</a></li>
									<li><a href="#">Add New Free listing</a></li>
									<li><a href="#">All Paid listing</a></li>
									<li><a href="#">Add New Paid listing</a></li>
								</ul>
							</div>
						</li>
							<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-list-ul" aria-hidden="true"></i>Member Management</a>
								<div class="collapsible-body left-sub-menu">
									<ul>
										<li><a href="#">Member List</a> </li>
										<li><a href="#">View Business</a> </li>
									</ul>
							    </div>
							</li>		
							<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-list-ul" aria-hidden="true"></i>Group Management</a>
								<div class="collapsible-body left-sub-menu">
									<ul>
										<li><a href="#">Add Group</a> </li>
										<li><a href="#">View Group</a></li>
									</ul>
							    </div>
							</li>

						<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-list-ul" aria-hidden="true"></i>Package</a>
							<div class="collapsible-body left-sub-menu">
								<ul>
									<li><a href="#">Free</a> </li>
									<li><a href="#">Paid</a> </li>
								</ul>
							</div>
						</li>
						<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-list-ul" aria-hidden="true"></i>Content Management</a>
							<div class="collapsible-body left-sub-menu">
								<ul>
									<li><a href="#">All Content</a> </li>
									<li><a href="#">Add New Content</a> </li>
								</ul>
							</div>
						</li>
							
							<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-list-ul" aria-hidden="true"></i>Upgrade Membership</a>
								<div class="collapsible-body left-sub-menu">
								</div>
							</li>
		
						<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-list-ul" aria-hidden="true"></i>Review and Ratings Management</a>
							 <div class="collapsible-body left-sub-menu">
								<ul>
									<li><a href="admin-all-review-rating.jsp">View Review and Rating</a> </li>
								</ul>
							</div>
						</li>
						
						<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-list-ul" aria-hidden="true"></i>Business Listing Page Accroding to</a>
							<div class="collapsible-body left-sub-menu">
							   <ul>
									<li><a href="#">Category</a></li>
									<li><a href="#">City and Area</a></li>
									<li><a href="#">Business Name</a></li>
									<li><a href="#">Contact Number</a></li>
							
								</ul>
							</div>
						</li>
						<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-list-ul" aria-hidden="true"></i>Orders</a>
							<div class="collapsible-body left-sub-menu">
							   <ul>
									<li><a href="admin-all-order.jsp">View Order</a></li>
								</ul>
							</div>
						</li>
						<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-list-ul" aria-hidden="true"></i>Transactions</a>
							<div class="collapsible-body left-sub-menu">
							   <ul>
									<li><a href="admin-all-transaction.jsp">View Transaction</a> </li>
								</ul>
							</div>
						</li>
						<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-list-ul" aria-hidden="true"></i>View Report</a>
							<div class="collapsible-body left-sub-menu">
							</div>
						</li>
						
						<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-user" aria-hidden="true"></i> Users</a>
							<div class="collapsible-body left-sub-menu">
								<ul>
									<li><a href="admin-all-users.jsp">All Users</a> </li>
									<li><a href="admin-list-users-add.html">Add New user</a> </li>
								</ul>
							</div>
						</li>
						
						
						<li><a href="#"><i class="fa fa-usd" aria-hidden="true"></i> Payments</a> </li>
						
						<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-bell-o" aria-hidden="true"></i>Notifications</a>
							<div class="collapsible-body left-sub-menu">
								<ul>
									<li><a href="#">All Notifications</a> </li>
									<li><a href="#">User Notifications</a> </li>
									<li><a href="#">Push Notifications</a> </li>
								</ul>
							</div>
						</li>
						<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-tags" aria-hidden="true"></i> List Price</a>
							<div class="collapsible-body left-sub-menu">
								<ul>
									<li><a href="#">All List Price</a> </li>
									<li><a href="#">Add New Price</a> </li>
								</ul>
							</div>
						</li>
						<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-rss" aria-hidden="true"></i> Blog & Articals</a>
							<div class="collapsible-body left-sub-menu">
								<ul>
									<li><a href="#">All Blogs</a> </li>
									<li><a href="#">Add Blog</a> </li>
								</ul>
							</div>
						</li>
						<li><a href="#"><i class="fa fa-cogs" aria-hidden="true"></i> Setting</a> </li>
						<li><a href="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i> Social Media</a> </li>
						<li><a href="#" target="_blank"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a> </li>
					</ul>
				</div>
			</div>
		</div>
	</div>   
</body>
</html>