<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%
    String E_mail=(String)session.getAttribute("Email");
    if(E_mail==null){
    	response.sendRedirect("Login.jsp");
    	session.setAttribute("login-error", "Please Login First....");
    }
    %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="Css.jsp"%>

</head>

<body>
<div class="container-fluid p-0">

<%@include file="Nav.jsp"%>
<div class="card py-5 mt-5">
<div class="card-body text-center">
<img alt="" src="Images/notes3.jpg" class="img-fluid mx-auto" />
<h2>START TAKING YOUR NOTES</h2>
<a href="AddNotes.jsp" class="btn btn-outline-primary">Start Here</a>
</div>
</div>

</div>
</body>
</html>