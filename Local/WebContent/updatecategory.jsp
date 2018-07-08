 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
</head>


<body>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
		
		<%
		String id=request.getParameter("id");
		System.out.println(id);
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "justdial";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM admincategory where id="+id;
System.out.println(sql);
resultSet = statement.executeQuery(sql);
 %>



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
							
								<%while(resultSet.next()){
%>
								<form class="" action="updateprocess.jsp" method="">
								<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
									<div class="row">
										<div class="input-field col s6">
										
											<input id="first_name" type="text" class="validate" name="fname" value="<%=resultSet.getString(2) %>">
											<label for="first_name">Category Name</label>
										</div>
										 <div class="input-field col s6">
											<input id="list_name" type="text" class="validate" name="title" value="<%=resultSet.getString(3) %>">
											<label for="list_name">Title</label>
										</div> 
									</div>
									
									<div class="row">
										<div class="input-field col s12">
											<input id="list_phone" type="text" class="" name="phone" value="<%=resultSet.getString(4) %>">
											<label for="list_phone">Phone</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="email" type="email" class="validate" name="email" value="<%=resultSet.getString(5) %>">
											<label for="email">Email</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input id="list_addr" type="text" class="validate" name="add" value="<%=resultSet.getString(6) %>">
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
											<input id="list_addr" type="text" class="validate" name="city" value="<%=resultSet.getString(7) %>">
											<label for="list_addr">City</label>
										</div>
									</div>
									
									
								
 		 <div class="row" >
										<div class="input-field col s12">
											 <select name="daynames" multiple value="<%=resultSet.getString(8) %>">
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
								
									<div class="row"> </div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text" id="" class="" name="desc" placeholder="description" value="<%=resultSet.getString(9) %>">
											 <label for="textarea1">Descriptions</label>
										</div>
									</div>
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Social Media Informations:</h5>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<input type="text"  name="link" value="<%=resultSet.getString(10) %>">
											<!-- <label for="list_addr">City</label> -->
										</div>
										<div class="input-field col s12">
											<input  type="text"  name="secondlink" value="<%=resultSet.getString(11) %>">
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
											<input type="text"  name="map" value="<%=resultSet.getString(12) %>">
											<label>Past your iframe code here</label>
										</div>
									</div>
														
								<!-- 	<div class="row">
										 <div class="db-v2-list-form-inn-tit">
											<h5>Cover Image <span class="v2-db-form-note">(image size 1350x500):<span></h5>
										</div> 
										<input type="file" name="coverimage"> 
									</div>
									
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="file" name="coverimage"> 
											</div>
										</div>
									</div>
									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Logo Image <span class="v2-db-form-note">(image size 1350x500):<span></h5>
										</div>
										
									</div>
									
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input class="file-path validate" type="file" name="logo"> 
											</div>
										</div>
									</div>
									<input type="file" name="logo"> 
 									<div class="row">
										<div class="db-v2-list-form-inn-tit">
											<h5>Photo Gallery</h5>
										</div>
									</div>
									<div class="row tz-file-upload">
										<div class="file-field input-field">
											<div class="tz-up-btn"> <span>File</span>
												<input type="file"> </div>
											<div class="file-path-wrapper db-v2-pg-inp">
												<input type="file" name="img1">  
												<input type="file" name="img2"> 
												<input type="file" name="img3"> 
												<input type="file" name="img4"> 
											</div>
										</div>
									</div>
									<div class="row tz-file-upload">
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
 <button type="submit" value="Submit" >Update</button>
								</form>
								<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
					
										
								
								
								
								
								
								
								
								
								
								
								
								
								
								
								
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

