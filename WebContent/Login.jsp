<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
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
						<h4>Login</h4>
					</div>


					<%
						String Invalid = (String) session.getAttribute("login-failed");
						if (Invalid != null) {
					%>

					<div class="alert alert-danger" role="alert"><%=Invalid%></div>
					<%
						session.removeAttribute("login-failed");
						}
					%>

					<%
						String Login = (String) session.getAttribute("login-error");
						if (Login != null) {
					%>

					<div class="alert alert-danger" role="alert"><%=Login%></div>
					<%
						session.removeAttribute("login-error");
						}
					%>

					<%
						String Logout = (String) session.getAttribute("log");
						if (Logout != null) {
					%>

					<div class="alert alert-danger" role="alert"><%=Logout%></div>
					<%
						session.removeAttribute("log");
						}
					%>
					<%
						String pwd = (String) session.getAttribute("Password");
						if (pwd != null) {
					%>
					<div class="alert alert-success"><%=pwd%></div>

					<%
						session.removeAttribute("Password");
						}
					%>


					<div class="card-body">

						<form action="Ulogin" method="post">


							<div class="form-group">
								<label>Enter Email</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="email">


							</div>


							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" name="pwd">
							</div>
							<a href="Forgot.jsp">forgot password?</a><br>
							<br>
							<button type="submit"
								class="btn btn-primary badge-pill btn-block" >Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>