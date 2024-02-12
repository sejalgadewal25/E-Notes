<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="db.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String Notes_No=request.getParameter("NO");
	String qr="delete from AddNotes where No=?";
	PreparedStatement ps=conn.prepareStatement(qr);
	ps.setString(1,Notes_No);
	int i=ps.executeUpdate();
	if(i>0){
		HttpSession Session;

			Session=request.getSession();
			Session.setAttribute("Delete","Data Deleted Successfully");
			response.sendRedirect("ShowNotes.jsp");
	 }
	else{
		%>
		<jsp:include page="ShowNotes.jsp"></jsp:include>
		<%
			out.println("<script>window.alert('Data Not Deleted')</script>");
	
	}
	%>
</body>
</html>