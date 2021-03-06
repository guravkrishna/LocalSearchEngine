 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
</head>


<body>
	<%@include file="Admin_header.html" %>
			<!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#"> Add Listing</a> </li>
						<li class="page-back"><a href="#"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Add New Category</h4> <a class="dropdown-button drop-down-meta drop-down-meta-inn" href="#" data-activates="dr-list"><i class="material-icons">more_vert</i></a>
						<ul id="dr-list" class="dropdown-content">
							<li><a href="#!">Add New</a> </li>
							<li><a href="#!">Edit</a> </li>
							<li><a href="#!">Update</a> </li>
							<li class="divider"></li>
							<li><a href="#!"><i class="material-icons">delete</i>Delete</a> </li>
							<li><a href="#!"><i class="material-icons">subject</i>View All</a> </li>
							<li><a href="#!"><i class="material-icons">play_for_work</i>Download</a> </li>
						</ul>
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
						<div class="hom-cre-acc-left hom-cre-acc-right">
							<div class="">
								<form class="" action="./AdminCategory" method="post" enctype="multipart/form-data">
									<div class="row">
										<div class="input-field col s6">
											<input id="first_name" type="text" class="validate" name="fname">
											<label for="first_name">Category Name</label>
										</div>
										 <div class="input-field col s6">
											<input id="list_name" type="text" class="validate" name="title">
											<label for="list_name">Title</label>
										</div> 
									</div>
									
									<div class="row">
										<div class="input-field col s12">
											<input id="list_phone" type="text" class="" name="phone">
											<label for="list_phone">Phone</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="email" type="email" class="validate" name="email">
											<label for="email">Email</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="list_addr" type="text" class="validate" name="add">
											<label for="list_addr">Address</label>
										</div>
									</div>
									<!-- <div class="row">
										<div class="input-field col s12"> 
											 <select name="btype">
												<option value="">Business Type</option>
												<option value="Free">Free</option>
												<option value="Premium">Premium</option>
												<option value="Premium Plus">Premium Plus</option>
												<option value="Ultra Premium Plus">Ultra Premium Plus</option>
											</select>  
											<input type="text" name="btype">
										
										 </div>
									</div>  -->
								
									<div class="row">
										<div class="input-field col s12">
											<input id="list_addr" type="text" class="validate" name="city">
											<label for="list_addr">City</label>
										</div>
									</div>
									 <!-- <div class="row">
										<div class="input-field col s12">
											 <select name="category" id="continent" onchange="countryChange(this);">
												 <option value="empty">Select Category</option>
												<option value="Hotels & Resorts">Hotels & Resorts</option>
												<option value="Education">Education</option>
												 
												<option value="Transportation">Transportation</option>
												<option value="Automobilers">Automobilers</option>
												<option value="Computer Repair">Computer Repair</option>
												<option value="Property">Property</option>
												<option value="Food Court">Food Court</option>
												<option value="Sports Events">Sports Events</option>
												<option value="Tour & Travels">Tour & Travels</option>
												<option value="Health Care">Health Care</option>
												<option value="Gym & Fitness">Gym & Fitness</option>
												<option value="Packers and Movers">Packers and Movers</option>
												<option value="Interior Design">Interior Design</option>
												<option value="Clubs">Clubs</option>
												<option value="Mobile Shops">Mobile Shops</option>
											</select> 
											
										</div>
									</div> -->
									
								
 		<div class="row" >
										<div class="input-field col s12">
											 <select name="daynames" multiple>
												<option value="">Opening Days</option>
												<option value="All Days">All Days</option>
												<option value="Monday">Monday</option>
												<option value="Tuesday">Tuesday</option>
												<option value="Wednesday">Wednesday</option>
												<option value="Thursday">Thursday</option>
												<option value="Friday">Friday</option>
												<option value="Saturday">Saturday</option>
												<option value="Sunday">Sunday</option>
											</select> 
											<!-- <input type="text" name="day"> -->
										</div>
									</div>
								<!-- <div class="row">
									<div class="input-field col s6">
									<input type="text" name="opentime">
										 <select name="open">
											<option value="" unable selected>Opening Time</option>
											<option value="12:00 AM">12:00 AM</option>
											<option value="01:00 AM">01:00 AM</option>
											<option value="02:00 AM">02:00 AM</option>
											<option value="03:00 AM">03:00 AM</option>
											<option value="04:00 AM">04:00 AM</option>
											<option value="05:00 AM">05:00 AM</option>
											<option value="06:00 AM">06:00 AM</option>
											<option value="07:00 AM">07:00 AM</option>
											<option value="08:00 AM">08:00 AM</option>
											<option value="09:00 AM">09:00 AM</option>
											<option value="10:00 AM">10:00 AM</option>
											<option value="11:00 AM">11:00 AM</option>
											<option value="12:00 PM">12:00 PM</option>
											<option value="01:00 PM">01:00 PM</option>
											<option value="02:00 PM">02:00 PM</option>
											<option value="03:00 PM">03:00 PM</option>
											<option value="04:00 PM">04:00 PM</option>
											<option value="05:00 PM">05:00 PM</option>
											<option value="06:00 PM">06:00 PM</option>
											<option value="07:00 PM">07:00 PM</option>
											<option value="08:00 PM">08:00 PM</option>
											<option value="09:00 PM">09:00 PM</option>
											<option value="10:00 PM">10:00 PM</option>
											<option value="11:00 PM">11:00 PM</option>	
										</select> 
										
									</div>
									<div class="input-field col s6">
										 <select name="close">
											<option value="" unable selected>Closing Time</option>
											<option value="12:00 AM">12:00 AM</option>
											<option value="01:00 AM">01:00 AM</option>
											<option value="02:00 AM">02:00 AM</option>
											<option value="03:00 AM">03:00 AM</option>
											<option value="04:00 AM">04:00 AM</option>
											<option value="05:00 AM">05:00 AM</option>
											<option value="06:00 AM">06:00 AM</option>
											<option value="07:00 AM">07:00 AM</option>
											<option value="08:00 AM">08:00 AM</option>
											<option value="09:00 AM">09:00 AM</option>
											<option value="10:00 AM">10:00 AM</option>
											<option value="11:00 AM">11:00 AM</option>
											<option value="12:00 PM">12:00 PM</option>
											<option value="01:00 PM">01:00 PM</option>
											<option value="02:00 PM">02:00 PM</option>
											<option value="03:00 PM">03:00 PM</option>
											<option value="04:00 PM">04:00 PM</option>
											<option value="05:00 PM">05:00 PM</option>
											<option value="06:00 PM">06:00 PM</option>
											<option value="07:00 PM">07:00 PM</option>
											<option value="08:00 PM">08:00 PM</option>
											<option value="09:00 PM">09:00 PM</option>
											<option value="10:00 PM">10:00 PM</option>
											<option value="11:00 PM">11:00 PM</option>	
										</select> 
										
									</div>
								</div> -->
									<div class="row"> </div>
									<div class="row">
										<div class="input-field col s12">
												<textarea id="textarea1" name="desc" class="materialize-textarea"></textarea>
											<label for="textarea1">Product Descriptions</label>
										</div>
									</div>
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Social Media Informations:</h5>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text"  name="link">
											<!-- <label for="list_addr">City</label> -->
										</div>
										<div class="input-field col s12">
											<input  type="text"  name="secondlink">
											<!-- <label for="list_addr">City</label> -->
										</div>
									</div>
									
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Google Map:</h5>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text"  name="map">
											<label>Past your iframe code here</label>
										</div>
									</div>
														
									<div class="row">
										 <div class="db-v2-list-form-inn-tit">
											<h5>Cover Image <span class="v2-db-form-note">(image size 1350x500):<span></h5>
										</div> 
										<input type="file" name="coverimage"> 
									</div>
									
									<!-- <div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="file" name="coverimage"> 
											</div>
										</div>
									</div> -->
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Logo Image <span class="v2-db-form-note">(image size 1350x500):<span></h5>
										</div>
										
									</div>
									
							<!-- 		<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="file" name="logo"> 
											</div>
										</div>
									</div>-->
									<input type="file" name="logo"> 
 									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Photo Gallery</h5>
										</div>
									</div>
									<!-- <div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file"> </div>
											<div class="file-path-wrapper db-v2-pg-inp"> -->
												<input type="file" name="img1">  
												<input type="file" name="img2"> 
												<input type="file" name="img3"> 
												<input type="file" name="img4"> 
										<!-- 	</div>
										</div>
									</div> -->
									<!-- <div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="file" name="img2"> 
											</div>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="file" name="img3"> 
											</div>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="file" name="img4"> 
											</div>
										</div>
									</div> -->
								
									<div class="row">
										<!-- <div class="input-field col s12 v2-mar-top-40"> Submit Listing & Pay</div>
										
 -->									
 </div>
 <button type="submit" value="Submit">SUBMIT </button>
								</form>
							</div>
						</div>
									</div>
								</div>
								<div class="admin-pag-na">
									<ul class="pagination list-pagenat">
										<li class="disabled"><a href="#!!"><i class="material-icons">chevron_left</i></a> </li>
										<li class="active"><a href="#!">1</a> </li>
										<li class="waves-effect"><a href="#!">2</a> </li>
										<li class="waves-effect"><a href="#!">3</a> </li>
										<li class="waves-effect"><a href="#!">4</a> </li>
										<li class="waves-effect"><a href="#!">5</a> </li>
										<li class="waves-effect"><a href="#!">6</a> </li>
										<li class="waves-effect"><a href="#!">7</a> </li>
										<li class="waves-effect"><a href="#!">8</a> </li>
										<li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a> </li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

									
	<!--== BOTTOM FLOAT ICON ==-->
	<%@include file="Admin_footer.html" %>
	<!--SCRIPT FILES-->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/materialize.min.js" type="text/javascript"></script>
	<script src="js/custom.js"></script>
</body>
</html> 

