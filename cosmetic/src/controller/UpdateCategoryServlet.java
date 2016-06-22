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
 * Servlet implementation class UpdateCategoryServlet
 */
@WebServlet("/UpdateCategoryServlet")
public class UpdateCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCategoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Category category = new CategoryDAOImpl().getCategory(Integer.parseInt(request.getParameter("category_id")));	
		request.setAttribute("category", category);
		request.getRequestDispatcher("updateCategory.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Category category = new Category();
		try {
			category.setCategory_id(Integer.parseInt(request.getParameter("category_id")));
			category.setName(request.getParameter("name"));;
			category.setParent(Integer.parseInt(request.getParameter("parent")));			
			new CategoryDAOImpl().update(category);
			response.sendRedirect("product_admin.jsp");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
