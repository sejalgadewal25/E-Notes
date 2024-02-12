<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Notes</title>
<%@include file="Css.jsp"%>
</head>
<body>
	<%@include file="Nav.jsp"%>

	<%
		String Up = (String) session.getAttribute("Msg");
		if (Up != null) {
	%>
	<div class="alert alert-success"><%=Up%></div>

	<%
		session.removeAttribute("Msg");
		}
	%>

	<%
		String data = (String) session.getAttribute("Insert");
		if (data != null) {
	%>
	<div class="alert alert-success"><%=data%></div>

	<%
		session.removeAttribute("Insert");
		}
	%>

	<%
		String del = (String) session.getAttribute("Delete");
		if (del != null) {
	%>
	<div class="alert alert-success"><%=del%></div>

	<%
		session.removeAttribute("Delete");
		}
	%>



	<h2 class="text-center">All Notes</h2>
	<!--  <div class="Container">

<div class="row">
<div class="col-md-12">
</div>
</div>
</div>-->

</body>
</html>

<%@page import="java.sql.*"%>
<%
	String E_mail = (String) session.getAttribute("Email");
	String name = (String) session.getAttribute("Name");
	String U_id = (String) session.getAttribute("Id");

	if (E_mail == null) {
		response.sendRedirect("Login.jsp");
		session.setAttribute("login-error", "Please Login First....");
	} else {

	}
%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/E_Notes", "root", "1437");
	String qr = "select * from AddNotes where User_Id=? ";
	PreparedStatement ps = conn.prepareStatement(qr);
	ps.setString(1, U_id);
	ResultSet rs = ps.executeQuery();
	if (rs.next()) {
		do {
			HttpSession session1 = request.getSession();
			session1.setAttribute("N", rs.getString("No"));
			session1.setAttribute("T", rs.getString("Topic"));
			session1.setAttribute("C", rs.getString("Content"));
			session1.setAttribute("D", rs.getString("Date"));
			session1.setAttribute("U", rs.getString("User_Id"));
			session1.setAttribute("NM", rs.getString("Name"));

			String to = (String) session.getAttribute("T");
			String co = (String) session.getAttribute("C");
			String da = (String) session.getAttribute("D");
			String No = (String) session.getAttribute("N");
%>

<div class="container">
	<div class="row">
		<div class="col-md-12">

			<div class="card mt-3">
				<img alt="" src="Images/notes2 (2).jpg"
					class="card-img-top mt-2 mx-auto" style="max-width: 100px;" />

				<div class="card-body p-4">
					<h5 class="card-title"><%=to%></h5>
					<p><%=co%></p>
					<p>
						<b class="text-success">Published By: <%=name%></b><br> <b
							class="text-primary"></b>
					</p>

					<p>
						<b class="text-success">Published Date:<%=da%></b><br> <b
							class="text-success"></b>
					</p>

					<div class="container text-center mt-2 ">
						<a href="Delete_Notes.jsp?NO=<%=No%>" class="btn btn-danger">Delete</a>
						<a href="Update_Notes.jsp?note_id=" class="btn btn-primary">Edit</a>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>



<%
	} while (rs.next());
	} else {

	}
%>


