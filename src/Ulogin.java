

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Ulogin")
public class Ulogin extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Email=request.getParameter("email");
		String Password=request.getParameter("pwd");
		
		HttpSession session = null;
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/E_Notes","root","1437");
			String qr="select * from register where Email_Id=? and password=?";
			PreparedStatement ps=conn.prepareStatement(qr);
			ps.setString(1,Email);
			ps.setString(2,Password);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				session=request.getSession();
				session.setAttribute("Id",rs.getString("No"));
				session.setAttribute("Name",rs.getString("Name"));
				session.setAttribute("Email",rs.getString("Email_Id"));
				
				response.sendRedirect("Home.jsp");
				
			}
			else{
				session=request.getSession();
				session.setAttribute("login-failed", "Invalid Id and Password");
				response.sendRedirect("Login.jsp");

		
			}
		} 
		catch (Exception e) 
		{	
			e.printStackTrace();
				}


	}

}
