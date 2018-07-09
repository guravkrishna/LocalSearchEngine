<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

	<%@include file="Admin_header.html" %>
			<!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#"> All Transaction List</a> </li>
						<li class="page-back"><a href="admin.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>All Transaction</h4> <a class="dropdown-button drop-down-meta drop-down-meta-inn" href="#" data-activates="dr-list"><i class="material-icons">more_vert</i></a>
						
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
										<div class="table-responsive">
											<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Search Form</title>  
</head>  
<body>  
<%@page import="Local.TransactionDao,Local.Transaction"%>  
<%  
String id=request.getParameter("id");  
Transaction u=TransactionDao.getRecordById(Integer.parseInt(id));  
%>  
  
<h1>Search Form</h1>  

<table border="1" width="90%">  
<tr><td>Id</td>
    <td><%= u.getId()%></td></tr>
<tr><td>Customer Name</td>
    <td><%= u.getCustomer_name()%></td></tr>
<tr><td>Products Name</td>
    <td><%= u.getProducts_name()%></td></tr>
<tr><td>Order Date</td>
    <td><%=u.getOrder_date()%></td></tr>
<tr><td>Email</td>
    <td><%=u.getEmail()%></td></tr>
<tr><td>State</td>
    <td><%= u.getState()%></td></tr>
<tr><td>Address</td>
    <td><%=u.getAddress()%></td></tr>
<tr><td>Payment</td>
    <td><%=u.getPayment()%></td></tr>
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
</body>
</html>