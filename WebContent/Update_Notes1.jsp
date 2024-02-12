<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="db.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	
		String no_id = request.getParameter("nid");
		int Note_Id = Integer.parseInt(no_id);
		String Topic = request.getParameter("topic");
		String Content = request.getParameter("content");

		String qr = "update AddNotes set Topic=?,Content=? where No=?";
		PreparedStatement ps = conn.prepareStatement(qr);
		ps.setString(1, Topic);
		ps.setString(2, Content);
		ps.setInt(3, Note_Id);
		int i = ps.executeUpdate();

		if (i > 0) {
			HttpSession Session;

			Session=request.getSession();
			Session.setAttribute("Msg","Notes Updated Successfully");
			response.sendRedirect("ShowNotes.jsp");
		}
	else {
	%>
	<jsp:include page="ShowNotes.jsp"></jsp:include>
	<%
		out.println("<script>window.alert('Notes Not Updated')</script>");

		}
	%>

</body>
</html>