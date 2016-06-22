package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CategoryDAOImpl;
import model.Category;


/**
 * Servlet implementation class AddNewCategoryServlet
 */
@WebServlet("/AddNewCategoryServlet")
public class AddNewCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewCategoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		processRequest(request, response);
	}
	private void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		Category c = new Category();
		try {
			 c.setName(request.getParameter("categoryName"));
			 c.setParent(Integer.parseInt(request.getParameter("Parent")));			
			new CategoryDAOImpl().insertCategory(c);
			response.sendRedirect("categoryAdmin.jsp");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
