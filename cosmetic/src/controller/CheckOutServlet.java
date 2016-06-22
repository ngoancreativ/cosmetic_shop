package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.TreeMap;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dao.OrderDAOImpl;
import dao.OrderDetailDAOImpl;
import model.Cart;
import model.Order;
import model.OrderDetail;
import model.Product;


/**
 * Servlet implementation class CkeckOutServlet
 */
@WebServlet("/CheckOutServlet")
public class CheckOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private OrderDAOImpl orderDAO = new OrderDAOImpl();
	
	private OrderDetailDAOImpl orderDetailDAO = new OrderDetailDAOImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckOutServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	
	@SuppressWarnings({ "unchecked", "unused" })
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
	
		//int orderid = Integer.parseInt(request.getParameter("orderid"));
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String productname = request.getParameter("productname");
		Double price = Double.parseDouble(request.getParameter("price"));
		Double totalMoney = Double.parseDouble(request.getParameter("totalMoney"));
		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");
		String total = request.getParameter("total");	
		ArrayList<Long> listbuy = (ArrayList<Long>) session
				.getAttribute("cardID");
		long idBuy = Long.parseLong(request.getParameter("cardID"));
		if (listbuy == null) {
			listbuy = new ArrayList<Long>();
			session.setAttribute("cardID", listbuy);
		}

		try {
			Order od = null;
			OrderDetail odL = null;
			orderDAO.addOrder(new Order(0,address, phone, total, email, new Date(), productname, price, totalMoney));
			TreeMap<Product, Integer> list = cart.getListProduct();
			for (Entry<Product, Integer> entry : list.entrySet()) {
				orderDetailDAO.addOrderDetailDAO(new OrderDetail(0, 0 , entry.getKey().getProduct_id(), entry.getValue(), entry.getKey().getPrice(), entry.getKey().getName()));
			}
			session.removeAttribute("cart");
			session.setAttribute("cart", new Cart());
			response.sendRedirect("index.jsp");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	
	}

}
