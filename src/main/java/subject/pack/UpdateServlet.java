package subject.pack;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
Servlet implementation class UpdateServlet
*/
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SubjectDAO subjectDAO = new SubjectDAO();
	
		final int id = Integer.parseInt(request.getParameter("id"));
	    final String name = request.getParameter("name");
	    final String teacherid = request.getParameter("teacherid");
	    final String courseid = request.getParameter("courseid");
	    final int term = Integer.parseInt(request.getParameter("term"));
	    final String content = request.getParameter("content");
	    final Subject book = new Subject(id, name, teacherid, courseid, term, content);
	    	    
	    try {
	    	subjectDAO.updateSubject(book);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    response.sendRedirect("successupdated.jsp");
	}
}
