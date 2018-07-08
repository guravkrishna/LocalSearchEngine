<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="user_header.html" %>
			<!--== BODY INNER CONTAINER ==-->




			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Change Password</h4>
						<!-- Dropdown Structure -->
						<div class="split-row">
							<div class="col-md-12">
								<div class="box-inn-sp ad-inn-page">
									<div class="tab-inn ad-tab-inn">
										<div class="hom-cre-acc-left hom-cre-acc-right">
											<div class="">
												<form class="" action="ChangePass.jsp">
												
													<div class="row">
															<div class="input-field col s12">
																<input id="cpass" type="password" class="validate" required> 
																<label for="email">Current Password</label>
															</div>
														</div>
														
														<div class="row">
															<div class="input-field col s12">
																<input id="npass" type="password" class="validate" required> 
																<label for="email">New Password</label>
															</div>
														</div>
														
														<div class="row">
															<div class="input-field col s12">
																<input id="rpass" type="password" class="validate" required> 
																<label for="email">Re-Enter New Password</label>
															</div>
														</div>
														
														
														<!-- jsp code to change password -->
												
</body>
</html>




														
														<!--jsp code to change password end  -->
														
														<div class="row">
															<div class="input-field col s12"> <a class="waves-effect waves-light btn-large full-btn" href="">Submit User</a> </div>
														</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			
     <script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/materialize.min.js" type="text/javascript"></script>
	<script src="js/custom.js"></script>
	
	
<%@include file="user_footer.html" %>
</body>

</html>