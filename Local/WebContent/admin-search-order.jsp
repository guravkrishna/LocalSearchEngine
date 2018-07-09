<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
						<li class="active-bre"><a href="#">Review and Rating</a> </li>
						<li class="page-back"><a href="admin.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<a class="dropdown-button drop-down-meta drop-down-meta-inn" href="#" data-activates="dr-list"><i class="material-icons">more_vert</i></a>
						
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
										<div class="table-responsive">
<!DOCTYPE html>  
  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Orders</title>  
</head>  
<body>  
  <form action="/LocalSearch/admin-view-particular-order.jsp" method="get">
  <table>
  <tr><td>Enter the OrderId:</td><td><input type="text" name="id"></td></tr>
  <tr><td><input type="submit" value="Submit"></td></tr>
  </table>
</form>  
</body>

										</div>
									</div>
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