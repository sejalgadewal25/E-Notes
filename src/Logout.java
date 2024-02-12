

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Logout")
public class Logout extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		session.removeAttribute("Email");
		session.removeAttribute("Name");
		session.removeAttribute("Id");
		
		HttpSession session1=request.getSession();
		session.setAttribute("log","Logout Successfully....");
		
		response.sendRedirect("Login.jsp");
		
	}

}
