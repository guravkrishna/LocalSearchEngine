<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
						<li class="active-bre"><a href="#"> View Listing</a> </li>
						<li class="page-back"><a href="#"><i class="fa fa-backward" aria-hidden="true"></i> Back</a> </li>
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>View Listing</h4> <a class="dropdown-button drop-down-meta drop-down-meta-inn" href="#" data-activates="dr-list"><i class="material-icons">more_vert</i></a>
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
										<table class="responsive-table bordered">
											<tbody>
												<%@page import="java.sql.DriverManager"%>
                                                <%@page import="java.sql.ResultSet"%>
                                                <%@page import="java.sql.Statement"%>
                                                <%@page import="java.sql.Connection"%>
                                                <%
                                                 String id = request.getParameter("id");
                                                 String driver = "com.mysql.jdbc.Driver";
                                                 String connectionUrl = "jdbc:mysql://localhost:3306/";
                                                 String database = "justdial";
                                                 String userid = "root";
                                                 String password = "root";
                                                 try {
                                                    Class.forName(driver);
                                                    } catch (ClassNotFoundException e) {
                                                      e.printStackTrace();
                                                      }
                                                      Connection connection = null;
                                                     Statement statement = null;
                                                     ResultSet resultSet = null;
                                                 %>
                                                <!DOCTYPE html>
                                                 <html>
                                                 <body>
                                                 <table border="1">
                                             <tr>
                                             <td>Name</td>
                                             <td>phone</td>
                                              <td>Email</td>
                                              <td>Facebook</td>

                                               </tr>
                                 <%
                                       try{
                                           connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                                           statement=connection.createStatement();
                                           String sql ="select * from listing where first_name=first_name";
                                           resultSet = statement.executeQuery(sql);
                                           if(resultSet.next()){
                                            %>
                                       <tr>
                                         <td><%=resultSet.getString("first_name") %></td>
                                         <td><%=resultSet.getString("list_phone") %></td>
                                         <td><%=resultSet.getString("email") %></td>
                                         <td><%=resultSet.getString("facebook") %></td>
                                        </tr>
                                  <%
                                   }
                                        connection.close();
                                        } catch (Exception e) {
                                        e.printStackTrace();
                                       }
                                        %>
                                 </table>
                         </body>
                    </html>
											</tbody>
										</table>
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
</body>
</html>