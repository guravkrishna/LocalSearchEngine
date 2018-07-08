<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from rn53themes.net/themes/demo/directory/admin-listing-category.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Jul 2018 05:18:47 GMT -->
<head>
	
<body>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
		
		<%
/* String id = request.getParameter("name");
	
		System.out.println(id);
 */		
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
String sql ="SELECT * FROM adminsubcategory";
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
						<li class="active-bre"><a href="#">Listing Categories</a> </li>
						<li class="page-back"><a href="admin.html"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Listing Categories</h4> <a class="dropdown-button drop-down-meta drop-down-meta-inn" href="#" data-activates="dr-list"><i class="material-icons">more_vert</i></a>
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
										<div class="table-responsive">
										<form class="app-search" action="searchsubcategory.jsp">
					<input type="text" placeholder="Search..." class="form-control" name="search"> <a href="#"><i class="fa fa-search"></i></a> </form>
								
								
								</form>
											<table class="table table-hover">
												<thead>
													<tr>
														<th>Select</th>
														<th>Listing</th>
														<th>Name</th>
														<th>Create Date</th>
														<th>Contact Number</th>
														<th>Email Id</th>
														<th>View</th>
														<th>Edit</th>
														<th>Delete</th>
													</tr>
												</thead>
												<tbody>
												<% while(resultSet.next()){
	%>
													<tr>
													
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-1" />
															<label for="filled-in-box-1"></label>
														</td>
														<td><span class="list-img"><img src="uploadimages/<%=resultSet.getString(13)%>" alt=""></span> </td>
														
														<td><a href="#"><span class="list-enq-name"><%=resultSet.getString(2)%></span><span class="list-enq-city"><%=resultSet.getString(7)%></span></a> </td>
														
														<td><%=resultSet.getString(19)%></td>
														<td> <span class="label label-primary"><%=resultSet.getString(4)%></span> </td>
														<td> <span class="label label-primary"><%=resultSet.getString(5)%></span> </td>
														<td> <a href="viewadminsubcategory.jsp?id=<%=resultSet.getString("id")%>"><button type="button" value="view">View</button></a> </td>
														<td> <a href="updatesubcategory.jsp?id=<%=resultSet.getString("id")%>"><button type="button" value="edit">Edit</button></a> </td>
														<td> <a href="deleteadminsubcategory.jsp?id=<%=resultSet.getString("id")%>"><button type="button" value="delete">Delete</button></a> </td>
													</tr>
													<% 
}
	
}
catch (Exception e) {
e.printStackTrace();
}

%>
													<!-- <tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-2" />
															<label for="filled-in-box-2"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Health Care</span><span class="list-enq-city">Hospitals,Pharmacy</span></a> </td>
														<td>18 feb 2018</td>
														<td> <span class="label label-primary">142</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr>
													<tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-3" />
															<label for="filled-in-box-3"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Education</span><span class="list-enq-city">Schools,Colleges</span></a> </td>
														<td>18 feb 2018</td>
														<td> <span class="label label-primary">156</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr>
													<tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-4" />
															<label for="filled-in-box-4"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Hotels</span><span class="list-enq-city">Resorts,Hotels</span></a> </td>
														<td>21 June 2016</td>
														<td> <span class="label label-primary">324</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr>
													<tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-5" />
															<label for="filled-in-box-5"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Property Services</span><span class="list-enq-city">Real estate, Property</span></a> </td>
														<td>12 may 2017</td>
														<td> <span class="label label-primary">241</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr>
													<tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-6" />
															<label for="filled-in-box-6"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Health Care</span><span class="list-enq-city">Hospitals,Pharmacy</span></a> </td>
														<td>18 feb 2018</td>
														<td> <span class="label label-primary">142</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr>
													<tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-7" />
															<label for="filled-in-box-7"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Education</span><span class="list-enq-city">Schools,Colleges</span></a> </td>
														<td>18 feb 2018</td>
														<td> <span class="label label-primary">156</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr>
													<tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-8" />
															<label for="filled-in-box-8"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Hotels</span><span class="list-enq-city">Resorts,Hotels</span></a> </td>
														<td>21 June 2016</td>
														<td> <span class="label label-primary">324</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr>
													<tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-9" />
															<label for="filled-in-box-9"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Property Services</span><span class="list-enq-city">Real estate, Property</span></a> </td>
														<td>12 may 2017</td>
														<td> <span class="label label-primary">241</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr>
													<tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-10" />
															<label for="filled-in-box-10"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Health Care</span><span class="list-enq-city">Hospitals,Pharmacy</span></a> </td>
														<td>18 feb 2018</td>
														<td> <span class="label label-primary">142</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr>
													<tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-11" />
															<label for="filled-in-box-11"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Education</span><span class="list-enq-city">Schools,Colleges</span></a> </td>
														<td>18 feb 2018</td>
														<td> <span class="label label-primary">156</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr>
													<tr>
														<td>
															<input type="checkbox" class="filled-in" id="filled-in-box-12" />
															<label for="filled-in-box-12"></label>
														</td>
														<td><span class="list-img"><img src="images/users/1.png" alt=""></span> </td>
														<td><a href="#"><span class="list-enq-name">Hotels</span><span class="list-enq-city">Resorts,Hotels</span></a> </td>
														<td>21 June 2016</td>
														<td> <span class="label label-primary">324</span> </td>
														<td> <span class="label label-primary">Active</span> </td>
														<td> <a href="admin-list-category-edit.html"><i class="fa fa-edit"></i></a> </td>
													</tr> -->
												</tbody>
											</table>
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


<!-- Mirrored from rn53themes.net/themes/demo/directory/admin-listing-category.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Jul 2018 05:18:48 GMT -->
</html>