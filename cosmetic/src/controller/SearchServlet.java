package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAOImpl;

import model.Product;


@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SearchServlet() {
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
		String productName = request.getParameter("productName");
		List<Product> listProduct;

		if ("".equals(productName)) {
			listProduct = new ProductDAOImpl().getListProduct();
		} else {
			listProduct = new ProductDAOImpl().searchProductByName(productName);
		}
		request.setAttribute("listProduct", listProduct);
		request.getRequestDispatcher("search.jsp").forward(request, response);
	}

}