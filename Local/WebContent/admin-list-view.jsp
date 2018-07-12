<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Viewed List</title>
</head>
<body>	
	<%@include file="Admin-header.jsp" %>
	
			<!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#"> View Listing</a> </li>
						<li class="page-back"><a href="#"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>View Listing</h4>
						<!-- <ul id="dr-list" class="dropdown-content">
							<li><a href="#!">Add New</a> </li>
							<li><a href="#!">Edit</a> </li>
							<li><a href="#!">Update</a> </li>
							<li class="divider"></li>
							<li><a href="#!"><i class="material-icons">delete</i>Delete</a> </li>
							<li><a href="#!"><i class="material-icons">subject</i>View All</a> </li>
							<li><a href="#!"><i class="material-icons">play_for_work</i>Download</a> </li>
						</ul> -->
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
										<table class="responsive-table bordered">
											<tbody>
												   <%
												   try
													{
													connection = DriverManager.getConnection(connectionUrl+database, userid, password);
													statement=connection.createStatement();
													String sql ="select * from listing l,category c where l.email=c.email";
													resultSet = statement.executeQuery(sql);
													while(resultSet.next()){
													%>
													<tr>
													<td>User Name</td>
													<td>:</td>
													<td><%=resultSet.getString("fname")%></td>
												</tr>
												<tr>
													<td>Email</td>
													<td>:</td>
													<td><%=resultSet.getString("email") %></td>
												</tr>
												<tr>
													<td>Phone</td>
													<td>:</td>
													<td><%=resultSet.getString("phone") %></td>
												</tr>
												<tr>
													<td>City</td>
													<td>:</td>
													<td><%=resultSet.getString("city") %></td>
												</tr>
												<tr>
													<td>Opening Time</td>
													<td>:</td>
													<td><%=resultSet.getString("open") %></td>
												</tr>
												<tr>
													<td>Closing Time</td>
													<td>:</td>
													<td><%=resultSet.getString("close")%></td>
												</tr>
												<tr>
													<td>Business Type</td>
													<td>:</td>
													<td><span class="label label-danger"><%=resultSet.getString("package")%></span></td>
												</tr>
												
													<%
													}
													connection.close();
													} catch (Exception e) {
													e.printStackTrace();
													}
													%>
													
											</tbody>
										</table>
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