<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listing Management</title>

<style>
.button {
    background-color: #ff1a75;
    border:none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    margin: 4px 2px;
    cursor: pointer;
}

</style>	
<script type="text/javascript">
function validateForm() {
    var x = document.forms["mysearch"]["search"].value;
    if (x=="") {
        alert("Enter ID/Name/Phone Number to search");
        return false;
    }
}
</script>
</head>

<body>
	
	 <%@include file="Admin-header.jsp" %>
	
			<!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="admin-all-listing1.jsp"> All listing</a> </li>
						<li class="page-back"><a href="admin.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Listing</h4>
						
					  <!--  <form class="app-search" action="search.jsp">
					          <input type="text" placeholder="Search..." class="form-control"><a href="search.jsp"><i class="fa fa-search"></i></a> 
				       </form> -->
					<form name="mysearch" action="search.jsp" action="post" onsubmit="return validateForm()">
						<span><input type="text" name="search"/></span>
						   <input type="submit" value="Search" class="button">
						</form>   
						   
						  <!-- <a class="dropdown-button drop-down-meta drop-down-meta-inn" href="#" data-activates="dr-list"><i class="material-icons">more_vert</i></a>
						<ul id="dr-list" class="dropdown-content">
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
										<div class="table-responsive">
											<table class="table table-hover">
												<thead>
													<tr>
														
														<th>firstname</th>
														<th>lastname</th>
														<th>contact</th>
														<th>email</th>
														<th>usertype</th>
														<th>city</th>
														<th>View</th>
														<th>Edit</th>
														<th>Delete</th>
													</tr>
												</thead>
												<tbody>
												
													<%
													try{
													connection = DriverManager.getConnection(connectionUrl+database, userid, password);
													statement=connection.createStatement();
													String sql ="select * from listing l,category c where l.email=c.email";
													//"SELECT * from listing l,category c where l.email=c.email";
													// select * from listing where id='"+search+"' or first_name like '%"+search+"%' ; 
													resultSet = statement.executeQuery(sql);
													while(resultSet.next()){
													%>
													<tr>
													<td><%=resultSet.getString("fname") %></td> <!-- First Name -->
													<td><%=resultSet.getString("lname") %></td> <!-- Last name -->
													<td><span class="label label-primary"><%=resultSet.getString("phone")%></span></td> <!-- contact -->
													<td><%=resultSet.getString("email") %></td>  <!-- email -->
													<td><span class="label label-danger"><%=resultSet.getString("package")%></span></td> <!-- type -->
													<td><%=resultSet.getString("city")%></td>
													<td><a href="admin-list-view.jsp?email=<%=resultSet.getString("email") %>"><i class="fa fa-eye"></i></a></td>
													<td><a href="admin-list-edit.jsp?id=<%=resultSet.getString("id") %>"><i class="fa fa-edit"></i></a></td>
													<td><a href="admin-list-delete.jsp?id=<%=resultSet.getString("id") %>"><i class="material-icons">delete</i></a></td>
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
			</div>
			
	<!--== BOTTOM FLOAT ICON ==-->
	<%@include file="Admin_footer.html" %>

</body>
</html>
