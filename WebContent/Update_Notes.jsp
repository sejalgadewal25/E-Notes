<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Page</title>
<%@include file="Css.jsp" %>
</head>
<body>
<div class="container-fluid">
<%@include file="Nav.jsp" %>

<h1 class="text-center">Edit Your Notes</h1>
<div class="container">
<div class="row">
<div class="col-md-12">

<form action="Update_Notes1.jsp">
  <div class="form-group">

	<%
		String No=(String)session.getAttribute("Id");
		//int Id_No=Integer.parseInt("No");
		String Uname=(String)session.getAttribute("Name");
		String Email_Id=(String)session.getAttribute("Email");
		String Note_Id = (String) session.getAttribute("N");
		String to = (String) session.getAttribute("T");
		String co = (String) session.getAttribute("C");
	
		if(Email_Id != null){
			
		%>
		<!-- 	User Id :-<h4><%= No %></h4> -->
		<h6>User Id :-</h6> <%= No %><input type="hidden" value="<%= No %>" name="uid" />
		<br>
		<h6>Name :-</h6> <%= Uname %><input type="hidden" value="<%= Uname %>" name="name" /><br>
		<br>
		<h6>Note_Id :-</h6> <%= Note_Id %><input type="hidden" value="<%= Note_Id %>" name="nid" /><br>
		
		
		<% 	
		}
	%>
	
	<!--  <input type="text" value="<%= No %>" name="uid" />-->
	<br>
    <label for="exampleInputEmail1"><h6>Enter Topic Name</h6> </label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="topic" value="<%=to %>" required="required">
    </div>
  
  <div class="form-group">
	<br>  
    <label for="exampleInputEmail1"><h6>Enter Topic Content</h6> </label>

  <textarea rows="9" cols="" class="form-control" name="content"  required="required"><%=co %></textarea>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-primary">Edit Notes</button>
  </div>
  
</form>
</div>
</div>

</div>



</div>
</body>
</html>