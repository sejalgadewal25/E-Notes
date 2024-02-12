
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/Uregister")


public class Uregister extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String Name=request.getParameter("name");
		String Email=request.getParameter("email");
		String Password=request.getParameter("pwd");
		HttpSession session;
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/E_Notes","root","1437");
			String qr="insert into register(Name,Email_Id,Password) values(?,?,?)";
			PreparedStatement ps=conn.prepareStatement(qr);
			ps.setString(1, Name);
			ps.setString(2, Email);
			ps.setString(3, Password);
			
			
			
			int i=ps.executeUpdate();
				
			if(i>0)
			{
				session=request.getSession();
				session.setAttribute("reg-success", "Registration Successfully..");
				response.sendRedirect("Register.jsp");
			}
		} 
		catch (Exception e) 
		{	
			session=request.getSession();
			session.setAttribute("failed-msg", "Something went wrong on server");
			response.sendRedirect("Register.jsp");

		}

}
}