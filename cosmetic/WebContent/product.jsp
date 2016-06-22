<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.Cart"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAOImpl"%>


	<%
		ProductDAOImpl productDAO = new ProductDAOImpl();
		String category_id = request.getParameter("category_id");
		Cart cart = (Cart) session.getAttribute("cart");
		if (cart == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}
		
		
	%>

	<div class="col-md-9 padding-right">
		<div class="features_items">
			<!--features_items-->
			<h2 class="title text-center">Sản Phẩm</h2>

			<%
				if (category_id == null) {
					for (Product list : productDAO.getListProduct()) {
			%>
			<div id="content" class="col-md-4">
				<div class="product-image-wrapper">
					<div class="single-products">
						<div class="productinfo text-center">
							<img src="<%=list.getImage()%>" alt="" />
							<h2><%=list.getPrice()%></h2>
							<p><%=list.getName()%></p>
							
						</div>
						
						<div class="product-overlay">
							<div class="overlay-content">
<%-- 								<h2><%=list.getPrice()%></h2> --%>
								<p><%=list.getName()%></p>
								<p><%=list.getDescription()%></p>
						<%
							if (session.getAttribute("uname") != null) {
						%>
								<a
									href="CartServlet?command=insertItem&product_id=<%=list.getProduct_id()%>&cartID=<%=System.currentTimeMillis()%>"
									class="btn btn-default add-to-cart">
									
									<i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
							<%
							}
						%>											
							</div>
						</div>
						
					</div>
					<div class="choose">
						<ul class="nav nav-pills nav-justified">
							<li><a
								href="detail.jsp?product_id=<%=list.getProduct_id()%>"><i
									class="fa fa-plus-square"></i>Chi tiết sản phẩm</a></li>
						</ul>
					</div>
				</div>
			</div>
			<%
				}
				} else {
					for (Product sp : productDAO.getListProductByCategory(Integer
							.parseInt(category_id))) {
			%>
			<div id="content"  class="col-md-4">
				<div class="product-image-wrapper">
					<div class="single-products">
						<div class="productinfo text-center">
							<img src="<%=sp.getImage()%>" alt="" />
							<h2><%=sp.getPrice()%></h2>
							<p><%=sp.getName()%></p>
							
						</div>
					<div class="product-overlay">
						<div class="overlay-content">
							<p><%=sp.getName()%></p>
							<p><%=sp.getDescription() %></p>
						<%
							if (session.getAttribute("uname") != null) {
						%>

							<a
								href="CartServlet?command=insertItem&product_id=<%=sp.getProduct_id()%>&cartID=<%=System.currentTimeMillis()%>"
								class="btn btn-default add-to-cart"><i
								class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
						<%
							}
						%>
						
						</div>
					</div>
				</div>
					<div class="choose">
						<ul class="nav nav-pills nav-justified">
							<li><a href="detail.jsp?product_id=<%=sp.getProduct_id()%>"><i
									class="fa fa-plus-square"></i>Product detail</a></li>
						</ul>
					</div>
				</div>
			</div>
			<%
				}
				}
			%>

		</div>
		<!--features_items-->


	</div>
	

