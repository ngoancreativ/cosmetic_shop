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
 * Servlet implementation class UpdateServletUser
 */
@WebServlet("/UpdateServletUser")
public class UpdateServletUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateServletUser() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		User user = new UserDAOImpl().getUser(Integer.parseInt(request
				.getParameter("user_id")));			
		request.setAttribute("user", user);
		request.getRequestDispatcher("updateUser.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		User user = new User();
		try {
			user.setUser_id(Integer.parseInt(request.getParameter("user_id")));
			user.setPassword(request.getParameter("password"));
			user.setUsername(request.getParameter("username"));
			user.setRole(Integer.parseInt(request.getParameter("role")));
			new UserDAOImpl().update(user);
			response.sendRedirect("user_admin.jsp");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
