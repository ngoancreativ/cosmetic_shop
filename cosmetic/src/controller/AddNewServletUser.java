package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.UserDAOImpl;

import model.User;

/**
 * Servlet implementation class AddNewServletUser
 */
@WebServlet("/AddNewServletUser")
public class AddNewServletUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddNewServletUser() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		User user = new User();
		try {
			user.setUsername(request.getParameter("username"));
			user.setPassword(request.getParameter("password"));			
			user.setRole(Integer.parseInt(request.getParameter("role")));
			new UserDAOImpl().addNew(user);
			response.sendRedirect("user_admin.jsp");			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
