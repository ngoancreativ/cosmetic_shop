package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAOImpl;
import model.User;;




@WebServlet("/DeleteServletUser")
public class DeleteServletUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public DeleteServletUser() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		processRequest(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		processRequest(request, response);
	}
	
	private void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		User user = new UserDAOImpl().getUser(Integer.parseInt(request
				.getParameter("user_id")));
		new UserDAOImpl().delete(user);
		response.sendRedirect("user_admin.jsp");
	}
	

}
