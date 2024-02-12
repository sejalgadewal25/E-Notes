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
String Email=request.getParameter("email");
String Password=request.getParameter("pwd");

	String qr="update register set Password=? where Email_Id=?";
	PreparedStatement ps=conn.prepareStatement(qr);
	ps.setString(1, Password);
	ps.setString(2, Email);
	int i=ps.executeUpdate();
	HttpSession session1;
	session1=request.getSession();
	
	if(i > 0){
		session1.setAttribute("Password","Password Successfully Changed");
		response.sendRedirect("Login.jsp");	
	}
	else{
		session1.setAttribute("wrong","Something went wrong");
		response.sendRedirect("Forgot.jsp");	
	}

%>
</body>
</html>