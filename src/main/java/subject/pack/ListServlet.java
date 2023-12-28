package subject.pack;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
Servlet implementation class List Servlet
*/
@WebServlet("/ListServlet")

public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			SubjectDAO subjectDAO = new SubjectDAO();
			
			final int uid = Integer.parseInt(request.getParameter("uid"));
			final List<Subject> listSubject = (List<Subject>)subjectDAO.selectAllSubjects(uid);
	        request.setAttribute("listSubject", (Object)listSubject);
	        final RequestDispatcher dispatcher = request.getRequestDispatcher("subject-list.jsp");
	        dispatcher.forward((ServletRequest)request, (ServletResponse)response);
	        response.sendRedirect("subject-list.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}
}