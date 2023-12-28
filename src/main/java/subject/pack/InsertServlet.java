package subject.pack;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
Servlet implementation class Insert Servlet
*/

@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			SubjectDAO SubjectDAO = new SubjectDAO();
			
		 	final String name = request.getParameter("name");
	        final String teacherid = request.getParameter("teacherid");
	        final String courseid = request.getParameter("courseid");
	        final int term = Integer.parseInt(request.getParameter("term"));
	        final String content = request.getParameter("content");
	        final int uid = Integer.parseInt(request.getParameter("uid"));
	        final Subject newSubject = new Subject(name, teacherid, courseid, term, content,uid);
	        
	        try {
	        	SubjectDAO.insertSubject(newSubject);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        response.sendRedirect("success.jsp");
	}

}

