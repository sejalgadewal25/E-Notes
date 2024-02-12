<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String UId=request.getParameter("uid");
int Uid=Integer.parseInt(UId);
String Topic=request.getParameter("topic");
String Content=request.getParameter("content");
String Name=request.getParameter("name");


try {

	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/E_Notes","root","1437");
	String qr="insert into AddNotes(Topic,Content,User_Id,Name)values(?,?,?,?)";
	PreparedStatement ps=conn.prepareStatement(qr);
	ps.setString(1, Topic);
	ps.setString(2, Content);
	ps.setInt(3, Uid);
	ps.setString(4, Name);
	
	int i=ps.executeUpdate();
	if(i>0){
			HttpSession Session;

			Session=request.getSession();
			Session.setAttribute("Insert","Data Inserted Successfully");
			response.sendRedirect("ShowNotes.jsp");
 }
	else
	{
		%>
		<jsp:include page="AddNotes.jsp"></jsp:include>
	
		<% 
		out.println("<script>window.alert('Data Not Inserted')</script>");
					
	}	
	
} 

catch (Exception e) {
	e.printStackTrace();
}


%>
</body>
</html>