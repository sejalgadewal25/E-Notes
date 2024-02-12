<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Page</title>
<%@include file="Css.jsp"%>
</head>
<body>
	<%@include file="Nav.jsp"%>
	<div class="continer-fluid div-color">
		<div class="row">
		
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x " aria-hidden="true"></i>
						<h4>Registration</h4>
					</div>



					<%
							    String regmsg =(String)session.getAttribute("reg-success");
								if(regmsg!=null){
					%>				
									<div class="alert alert-success" role="alert"><%= regmsg %>Login <a href="Login.jsp">Click Here</a></div>
					<%			
						session.removeAttribute("reg-success");
								}
					%>
					
					<%
							    String failmsg =(String)session.getAttribute("failed-msg");
								if(failmsg!=null){
					%>			
									<div class="alert alert-danger" role="alert"><%= failmsg %></div>
							
					<%	
					session.removeAttribute("failed-msg");
					
					}
					%>
					

					
					
					<div class="card-body">

						<form action="Uregister" method="post">
							<div class="form-group">
								<label>Enter Full Name</label> <input type="text"
									class="form-control" name="name">
							</div>

							<div class="form-group">
								<label>Enter Email</label> <input type="email"
									class="form-control" id="exampleInputEmail1" name="email"
									aria-describedby="emailHelp">
							</div>


							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="pwd" placeholder="Password">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="Footer.jsp"%>
</body>
</html>