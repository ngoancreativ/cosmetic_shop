<%@page import="model.Cart"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAOImpl"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>result search</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/price-range.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/mystyle.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/price-range.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>


<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrap.css">


<link rel="stylesheet" href="css/bootstrap-theme.css.map">
<link rel="stylesheet" href="css/bootstrap.css.map">
<script src="js/jquery-1.11.3.min.js"></script>


<link rel="stylesheet" href="css/bootstrap.css.map">
<script src="js/jquery-1.11.3.min.js"></script>

</head>
<body>
	<div class="container">
		<%
			ProductDAOImpl productDAO = new ProductDAOImpl();
			String category_id = request.getParameter("category_id");
			Cart cart = (Cart) session.getAttribute("cart");
			if (cart == null) {
				cart = new Cart();
				session.setAttribute("cart", cart);
			}
		%>
		<jsp:include page="slide.jsp"></jsp:include>
		<jsp:include page="navigtion.jsp"></jsp:include>
		<div class="container content">

			<jsp:include page="category.jsp"></jsp:include>
			<div class="col-sm-9 padding-right">
				<div class="features_items">
					<!--features_items-->
					<h2 class="title text-center">Sản phẩm</h2>
					<%
						List<Product> listProduct = (List<Product>) request.getAttribute("listProduct");
						if (!(listProduct == null)) {
							for (Product product : listProduct) {
					%>

					<div id="content" class="col-md-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="<%=product.getImage()%>" alt="" />
									<h2><%=product.getPrice()%></h2>
									<p><%=product.getName()%></p>
									<p><%=product.getDescription()%></p>
								</div>
								<%
											if (session.getAttribute("uname") != null) {
										%>
								<div class="product-overlay">
									<div class="overlay-content">

										
										<a
											href="CartServlet?command=insertItem&product_id=<%=product.getProduct_id()%>&cartID=<%=System.currentTimeMillis()%>"
											class="btn btn-default add-to-cart"> <i
											class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
										</a>
										
									</div>
								</div>
								<%
											}
										%>
							</div>
							<div class="choose">
								<ul class="nav nav-pills nav-justified">
									<li><a
										href="detail.jsp?product_id=<%=product.getProduct_id()%>"><i
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
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>