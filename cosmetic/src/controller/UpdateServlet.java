package controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAOImpl;
import model.Product;



@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Product product = new ProductDAOImpl().getProduct(Integer.parseInt(request
				.getParameter("product_id")));			
		request.setAttribute("product", product);
		request.getRequestDispatcher("update.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Product product = new Product();
		try {
			product.setProduct_id(Integer.parseInt(request.getParameter("productId")));
			product.setName(request.getParameter("productName"));
			product.setPrice(Double.parseDouble(request
					.getParameter("productPrice")));
			product.setImage(request.getParameter("productImage"));
			product.setDescription(request.getParameter("description"));
			product.setProductDetail(request.getParameter("ProductDetail"));
			product.setCategory_id(Integer.parseInt(request.getParameter("category_id")));
			new ProductDAOImpl().update(product);
			response.sendRedirect("product_admin.jsp");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}