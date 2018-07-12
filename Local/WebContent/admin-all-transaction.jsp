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
						<li class="page-back"><a href="admin.jsp"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<html>  
                  <head>  
                    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
                     <title>View Users</title>  
                        </head>  
                         <body>  
                         <form action="/Local/ExcelExport" method="get">
                          <table>
                               <tr><td><input type="submit" value="All Export Transaction List"></td></tr>
                           </table>
                          </form> 
                           
                          <form action="/Local/admin-search-transaction.jsp" method="get">
                              <table>
                                  <tr><td>Enter the PackageType:</td><td><input type="text" name="type"></td></tr>
                                  <tr><td><input type="submit" value="Submit"></td></tr>
                                  </table>
                               </form>  
                         <%@page import="Local.TransactionDao,Local.*,java.util.*"%>  
				
				      <div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>All Transaction</h4>
                                              <%  
                                                List<Transaction> list=TransactionDao.getAllRecords();  
                                                request.setAttribute("list",list);  
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
														<th>Id</th>
														<th>Type</th>
														<th>Start Date</th>
														<th>Expire Date</th>
														<th>Transaction</th>
														<th>Amount</th>
														<th>Status</th>
													</tr>
													
                                              <c:forEach items="${list}" var="u">  
													
												</thead>
												<tbody>
													<tr>
														<td>${u.getId()}</td>
														<td>${u.getType()}</td>
														<td>${u.getStartdate()}</td>  
														<td>${u.getExpiredate()}</td>
														<td>${u.getTransaction()}</td>
                                                        <td>${u.getAmount()}</td>
                                                         
                                                       <td> <span class="label label-primary">${u.getStatus()}</span> </td>
													</tr>
												</tbody>
											</c:forEach>  
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