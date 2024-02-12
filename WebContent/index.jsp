<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>

<style>

.back-img{
	background:url("Images/notes8.jpg");
	width:100%;
	height:90vh;
	background-repeat:no-repeat;
	background-size:cover;
}
</style>
<%@include file="Css.jsp" %> 
</head>
<body>
<%@include file="Nav.jsp" %> 

<div class="container-fluyid back-img">
<div class="text-center">
<h1 class="text-black"><i class="fa fa-book" aria-hidden="true"></i>E-Notes</h1>
<a href="Login.jsp" class="btn btn-light"><i class="fa fa-user-circle-o" aria-hidden="true"></i>Login</a>
<a href="Register.jsp" class="btn btn-light"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a>
</div>
</div>


</body>
</html>