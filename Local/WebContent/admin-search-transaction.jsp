<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- META TAGS --><%@include file="Admin_header.html" %>
			<!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#"> All Transaction List</a> </li>
						<li class="page-back"><a href="admin-all-transaction.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<html>  
                  <head>  
                    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
                     <title>View Users</title>  
                        </head>  
                         <body>  
                        <%@page import="Local.TransactionDao,Local.Transaction"%>  
				
				      <div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
					 <%  
                          String type=request.getParameter("type");  
                          Transaction u=TransactionDao.getRecordByType(type);  
                      %>  
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
										<div class="table-responsive">
											<table class="table table-hover">
												<thead>
													<tr>
														<th><span class="list-enq-name">Particular Search Transaction</span><span class="list-enq-city"></span></a></th>
														<th> </th>
													</tr>	
												</thead>
												<tbody>
													<tr>
														<tr>
														<td><span class="list-enq-name">Id</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%= u.getId()%></td></tr>
                                                            <tr>
                                                        <td><span class="list-enq-name">Type</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%= u.getType()%></td></tr>
                                                            <tr>
                                                            <td><span class="list-enq-name">Start Date</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%= u.getStartdate()%></td></tr>
                                                             <tr>
                                                             <td><span class="list-enq-name">Expire Date</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%=u.getExpiredate()%></td></tr>
                                                             <tr>
                                                             <td><span class="list-enq-name">Transaction</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%=u.getTransaction()%></td></tr>
                                                             <tr>
                                                            <td><span class="list-enq-name">Amount</span><span class="list-enq-city"></span></a> </td>
                                                        <td><%= u.getAmount()%></td></tr>
                                                             <tr>
                                                             <td><span class="list-enq-name">Status</span><span class="list-enq-city"></span></a> </td>
                                                         <td><%=u.getStatus()%></td>
                                                         </tr>
												</tbody>
										
											</table>
										</div>
									</div>
								</div>
                              </table>  
                            </body>  
                           </html>  
								
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