package subject.pack;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
Servlet implementation class ShowEdit
*/
@WebServlet("/ShowEdit")
public class ShowEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("<< Inside ShowEdit >>");
			
		SubjectDAO subjectDAO = new SubjectDAO();
		
		final int id = Integer.parseInt(request.getParameter("id"));
		final Subject existingUser = subjectDAO.selectSubject(id);
	    final RequestDispatcher dispatcher = request.getRequestDispatcher("subject-updated.jsp");
	    request.setAttribute("subject", (Object)existingUser);
	    dispatcher.forward((ServletRequest)request, (ServletResponse)response);
	}
}
