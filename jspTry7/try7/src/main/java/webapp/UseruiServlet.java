package webapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/userui")
public class UseruiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AndOrService andOrService = new AndOrService();
	
	
    public UseruiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//getParam names from the userui form
		String f1content = request.getParameter("f2");
		String f2content = request.getParameter("f2");
		String f3content = request.getParameter("f3");
		
		boolean wordsConnected = andOrService.areWordsConnected(f1content, f2content, f3content);
		if(wordsConnected) {
			request.setAttribute("Words are connected", "AND");
			request.getRequestDispatcher("WEB-INF/views/userui.jsp").forward(request, response);
		}
		
		else {
			request.setAttribute("Words are not connected", "OR");
			request.getRequestDispatcher("WEB-INF/views/userui.jsp").forward(request, response);
		}
	}
	
	

}
