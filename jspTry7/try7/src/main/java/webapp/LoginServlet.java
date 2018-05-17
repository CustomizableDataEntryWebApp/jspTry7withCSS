package webapp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

	private ValidateUserService vuser = new ValidateUserService();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//getParam name is now coming not directly from user typing it in the url,
		//but from the form on the login page
		//get params from the jsp form
		String jname = request.getParameter("jname");
		String jpassword = request.getParameter("jpassword");
		
		boolean isValid = vuser.isUserValid(jname, jpassword);
		if(isValid) {
			//first save the user to the session 
			HttpSession session = request.getSession();
			session.setAttribute("savedUserName", jname);
			
			//set attributes back to the servlet 
			request.setAttribute("name", jname);
			request.setAttribute("password", jpassword);
			request.getRequestDispatcher("WEB-INF/views/userui.jsp").forward(request, response);
		}
		
		else {
			request.setAttribute("errorMessage", "Sorry bro, invalid credentials");
			request.getRequestDispatcher("WEB-INF/views/login.jsp").forward(request, response);
		}

	}

}