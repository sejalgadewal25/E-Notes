<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="Css.jsp"%>

</head>
<body>
	<%@include file="Nav.jsp"%>
	<%
		String wng = (String) session.getAttribute("wrong");
		if (wng != null) {
	%>
	<div class="alert alert-success"><%=wng%></div>

	<%
		session.removeAttribute("wrong");
		}
	%>

	<div class="continer-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x " aria-hidden="true"></i>
						<h4>Forgot Password</h4>
					</div>


					<div class="card-body">

						<form action="Forgot1.jsp" method="post">


							<div class="form-group">
								<label>Enter Email</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="email">
							</div>


							<div class="form-group">
								<label for="exampleInputPassword1">New Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" name="pwd">
							</div>
							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Forgot
								Password</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>