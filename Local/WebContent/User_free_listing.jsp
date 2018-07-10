<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function myFunction() {
    alert("click Ok to Submit your listing");
}
</script>
</head>
<body>
		<%@include file="header.html" %>
		
		<section>
		<div class="tz">
			<!--LEFT SECTION-->
			<div class="tz-l">
				<div class="tz-l-1">
					<ul>
						<li><img src="images/db-profile.jpg" alt="" /> </li>
						<li><span>80%</span> profile compl</li>
						<li><span>18</span> Notifications</li>
					</ul>
				</div>
				<div class="tz-l-2">
					<ul>
						<li>
							<a href="dashboard.html"><img src="images/icon/dbl1.png" alt="" /> My Dashboard</a>
						</li>
						<li>
							<a href="db-all-listing.html"><img src="images/icon/dbl2.png" alt="" /> All Listing</a>
						</li>
						<li>
							<a href="db-listing-add.html" class="tz-lma"><img src="images/icon/dbl3.png" alt="" /> Add New Listing</a>
						</li>
						<li>
							<a href="db-message.html"><img src="images/icon/dbl14.png" alt="" /> Messages(12)</a>
						</li>
						<li>
							<a href="db-review.html"><img src="images/icon/dbl13.png" alt="" /> Reviews(05)</a>
						</li>
						<li>
							<a href="db-my-profile.html"><img src="images/icon/dbl6.png" alt="" /> My Profile</a>
						</li>
						<li>
							<a href="db-post-ads.html"><img src="images/icon/dbl11.png" alt="" /> Ad Summary</a>
						</li>
						<li>
							<a href="db-payment.html"><img src="images/icon/dbl9.png" alt=""> Check Out</a>
						</li>
						<li>
							<a href="db-invoice-all.html"><img src="images/icon/db21.png" alt="" /> Invoice</a>
						</li>						
						<li>
							<a href="db-claim.html"><img src="images/icon/dbl7.png" alt="" /> Claim & Refund</a>
						</li>
						<li>
							<a href="db-setting.html"><img src="images/icon/dbl210.png" alt="" /> Setting</a>
						</li>
						<li>
							<a href="#!"><img src="images/icon/dbl12.png" alt="" /> Log Out</a>
						</li>
					</ul>
				</div>
			</div>
			<!--CENTER SECTION-->
			<div class="tz-2">
				<div class="tz-2-com tz-2-main">
					<h4>Submit Listings</h4>
					<div class="db-list-com tz-db-table">
						<div class="ds-boar-title">
							<h2>Add New Listings</h2>
							<p>All the Lorem Ipsum generators on the All the Lorem Ipsum generators on the</p>
						</div>
						<div class="hom-cre-acc-left hom-cre-acc-right">
							<div class="">
								<form  action="Free_Listing" method="post">
									<div class="row">
										<div class="input-field col s12">
											<input id="list_name" name="list_name" type="text" class="validate">
											<label for="list_name">Listing Title</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s6">
											<input id="first_name" name="first_name" type="text" class="validate">
											<label for="first_name">First Name</label>
										</div>
										<div class="input-field col s6">
											<input id="last_name" name="last_name" type="text" class="validate">
											<label for="last_name">Last Name</label>
										</div>
									</div>
									
									<div class="row">
										<div class="input-field col s12">
											<input type="text" name="list_phone" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  maxlength="10"  class="validate"/>
											
											<label for="list_phone">Contact Number</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="email" name="email" type="email" class="validate">
											<label for="email">Email ID</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="city" name="city" type="text" class="validate">
											<label for="list_addr">City</label>
										</div>
									</div>
														
									<div class="row">
											<button type="submit" value="Submit" onclick="myFunction()">Submit</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--RIGHT SECTION-->
			<div class="tz-3">
				<h4>Notifications(18)</h4>
				<ul>
					<li>
						<a href="#!"> <img src="images/icon/dbr1.jpg" alt="" />
							<h5>Joseph, write a review</h5>
							<p>All the Lorem Ipsum generators on the</p>
						</a>
					</li>
					<li>
						<a href="#!"> <img src="images/icon/dbr2.jpg" alt="" />
							<h5>14 New Messages</h5>
							<p>All the Lorem Ipsum generators on the</p>
						</a>
					</li>
					<li>
						<a href="#!"> <img src="images/icon/dbr3.jpg" alt="" />
							<h5>Ads expairy soon</h5>
							<p>All the Lorem Ipsum generators on the</p>
						</a>
					</li>
					<li>
						<a href="#!"> <img src="images/icon/dbr4.jpg" alt="" />
							<h5>Post free ads - today only</h5>
							<p>All the Lorem Ipsum generators on the</p>
						</a>
					</li>
					<li>
						<a href="#!"> <img src="images/icon/dbr5.jpg" alt="" />
							<h5>listing limit increase</h5>
							<p>All the Lorem Ipsum generators on the</p>
						</a>
					</li>
					<li>
						<a href="#!"> <img src="images/icon/dbr6.jpg" alt="" />
							<h5>mobile app launch</h5>
							<p>All the Lorem Ipsum generators on the</p>
						</a>
					</li>
					<li>
						<a href="#!"> <img src="images/icon/dbr7.jpg" alt="" />
							<h5>Setting Updated</h5>
							<p>All the Lorem Ipsum generators on the</p>
						</a>
					</li>
					<li>
						<a href="#!"> <img src="images/icon/dbr8.jpg" alt="" />
							<h5>Increase listing viewers</h5>
							<p>All the Lorem Ipsum generators on the</p>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</section>
		
		
		<%@include file="footer.html" %>
</body>
</html>