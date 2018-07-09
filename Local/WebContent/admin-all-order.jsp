<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<body>
<body>


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
 
  
<%@page import="Local.OrderDao,Local.*,java.util.*"%>  
  
<h1>Order List</h1>  
  
<%  
List<Order> list=OrderDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table border="1" width="90%">  
<tr><th>Order Id</th><th>Order Name</th><th>Location</th><th>Shipping Date</th>  
<th>Delivery Date</th><th>Price</th><th>Mobile No</th><th>Email</th></tr>  
<c:forEach items="${list}" var="u">  

<tr><td>${u.getId()}</td><td>${u.getOrder_name()}</td><td>${u.getLocation()}</td>  
<td>${u.getShipping_date()}</td><td>${u.getDelivery_date()}</td><td>${u.getPrice()}</td> 
 <td>${u.getMobile_no()}</td><td>${u.getEmail()}</td> 
</c:forEach>  
</table>    
</body>  
</html>  
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